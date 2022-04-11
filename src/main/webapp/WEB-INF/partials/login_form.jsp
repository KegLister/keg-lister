<section class=" text-center text-lg-start">
    <div class="card mb-3">
        <div class="row g-0 d-flex align-items-center">
            <div class="col-lg-4 d-none d-lg-flex">
                <img src="https://absolutebeer.com/wp-content/uploads/2019/12/AB-Breweries-Independence-Brewing-Co-Beers-Native-Texan-Thumb.jpg"
                     alt="Texas Beers" class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5"/>
            </div>
            <div class="col-lg-8">
                <div class="card-body py-5 px-md-5">
                    <form action="/login" method="post">
                        <h2>Welcome!</h2>
                        <h3>please log in below</h3>
                        <br>
                        <div class="form-outline mb-4">
                            <input type="text" placeholder="Enter Username" name="username" required
                                   class="form-control"/>
                        </div>
                        <div class="form-outline mb-4">
                            <input type="password" placeholder="Enter Password" name="password" required
                                   class="form-control"/>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
                        <button type="button" class="btn btn-primary btn-block mb-4"><a
                                class="text-white text-decoration-none" href="/register">Create Account</a></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
