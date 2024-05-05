document.addEventListener("DOMContentLoaded", function() {
    let evaluate = document.querySelectorAll("#evaluate");
    
    if(evaluate) {
        evaluate.forEach(element => {
            let elementValue = element.textContent;
            switch(elementValue) {
                case "1":
                    element.innerHTML = `
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span id="totalEvaluate"><a href="#">(50 đánh giá)</a></span>
                    `;
                    break;
                case "2":
                    element.innerHTML = `
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span id="totalEvaluate"><a href="#">(65 đánh giá)</a></span>
                    `;
                    break;
                case "3":
                    element.innerHTML = `
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span id="totalEvaluate"><a href="#">(90 đánh giá)</a></span>
                    `;
                    break;
                case "4":
                    element.innerHTML = `
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-regular.svg" alt="icon"></span>
                                    <span id="totalEvaluate"><a href="#">(122 đánh giá)</a></span>
                    `;
                    break;
                case "5":
                    element.innerHTML = `
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span><img src="./public/icons/star-solid.svg" alt="icon"></span>
                                    <span id="totalEvaluate"><a href="#">(154 đánh giá)</a></span>
                    `;
                    break;
            }
        })
    }
})
