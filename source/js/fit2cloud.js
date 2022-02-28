function formSubmit() {
    var keyword = $("#keyword").val();
    let keysArr = JSON.parse(localStorage.getItem('keys')) == null ? [] : JSON.parse(localStorage.getItem('keys'));
    if (keyword && keysArr.length < 3 && keysArr.indexOf(keyword) === -1) {
        keysArr.push(keyword)
    }
    if (keyword && keysArr.length === 3 && keysArr.indexOf(keyword) === -1) {
        keysArr.shift()
        keysArr.push(keyword)
    }
    if (keysArr) {
        localStorage.setItem('keys', JSON.stringify(keysArr));
    }

    localStorage.setItem("keyword", keyword);
    document.getElementById("myForm").submit()
}

function initKeyword() {
    var keyword = localStorage.getItem("keyword");
    let keysArr = JSON.parse(localStorage.getItem('keys'));
    // if (keyword) {
    //     $("#keyword").val(keyword);
    // }
    var html = '<div class="caption-for-queries-history">最近搜索:</div><ul class="queries-history-list flex" >';
    var str = "";
    if (keysArr && keysArr.length > 0) {
        for (let key in keysArr) {
            str += '<li role="presentation" class="flex align-item-center">' +
                '<a href="/search?keyword=' + keysArr[key] + '">' +
                '<div class="queries-history-item-caption">' +
                '<span class="svg-wrapper">' +
                '<lightning-icon class="slds-icon-utility-search slds-icon_container">' +
                '<lightning-primitive-icon>' +
                '<svg focusable="false" data-key="search" aria-hidden="true" viewBox="0 0 52 52" class="slds-icon slds-icon-text-default">' +
                '<g>' +
                '<path d="M49.62 45.27L36.22 32a18.9 18.9 0 10-34.1-9.2A18.91 18.91 0 0032 36.27l13.3 13.3a1.45 1.45 0 002.1 0l2.1-2.1a1.68 1.68 0 00.12-2.2zm-28.7-11.5a12.9 12.9 0 1112.9-12.9 12.87 12.87 0 01-12.9 12.9z" fill-rule="evenodd"></path>' +
                '</g>' +
                '</svg>' +
                '</lightning-primitive-icon>' +
                '</lightning-icon>' +
                '</span>' +
                keysArr[key] +
                '</div>' +
                '</a>' +
                '</li>'

        }
        $("#coveo-queries-history").html(html + str + "</ul>");
    }
}
initKeyword();

function loadOtherArticle() {
    var keyword = localStorage.getItem("keyword");
    var cate = "${(post.categories[0].id)!''}";
    var tag = "${(post.tags[0].slug)!''}";
    if (keyword) {
        this.getArticle("/api/content/posts", "get", { "keyword": keyword, "size": 5 });
    } else if (cate) {
        this.getArticle("/api/content/posts", "get", { "categoryId": cate, "size": 5 });
    } else if (tag) {
        this.getArticle("/api/content/tags/" + tag + "/posts", "get", { "size": 5 });
    } else {
        this.getArticle("/api/content/posts/latest", "get", { "size": 5 });
    }

}

function getArticle(url, type, data) {
    $.ajax({
        url: url,
        type: type,
        headers: {
            "API-Authorization": ThemeConfig.access_key || "fit2cloud",
        },
        dataType: "json",
        data: data,
        success: function(result) {
            var str = "";
            $.each(result.data.content, function(index, key) {
                str += `<div class="coveo-list-layout CoveoResult">
                        <div class="flex align-center related-item">
                        <div class="icon-wrapper">
                            <div class="CoveoVMwareIcon">`
                $.each(key.categories, function(index1, cate) {
                    if (cate && index1 < 1 && cate.thumbnail) {
                        str += `<span>
                                    <img src="` + cate.thumbnail + `" height="20" width="20"/>
                                </span>`
                    } else {
                        str += `<span>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 36 36"
                                        height="36" width="36">
                                            <rect fill="#0091DA" rx="3" height="20" width="20" y="2" x="2">
                                            </rect>
                                            <path fill="white" d="M8.132 6.6H13.756L17 9.768V17.036C17.0067 17.4483 16.6802 17.7891 16.268 17.8H8.132C7.71981 17.7891 7.39328 17.4483 7.4 17.036V7.364C7.39328 6.95172 7.71981 6.61091 8.132 6.6ZM13.4 7.336V10.2H16.32L13.4 7.336Z"
                                            clip-rule="evenodd" fill-rule="evenodd">
                                            </path>
                                        </svg>
                                    </span>`
                    }
                })
                str += `</div>
                        </div>
                        <div class="v-align-middle">
                            <div class="coveo-title">`
                $.each(key.categories, function(index1, cate) {
                    if (cate && index1 < 1) {
                        str += `<span data-field="@commonsource" class="CoveoFieldValue">
                                <span>
                                    <a href="` + cate.fullPath + `" target="_blank">
                                    ` + cate.name + `
                                    </a>
                                    </span>
                                </span>`
                    }
                })
                str += `•
                            <a class="CoveoResultLink" tabindex="0" role="heading" aria-level="2" href="` + key.fullPath + `" target="_blank">
                                ` + key.title + `
                            </a>
                            </div>
                        </div>
                        </div>
                    </div>`
            })
            $("#coveo-result-list-container").html(str);
        }
    });
}
loadOtherArticle();