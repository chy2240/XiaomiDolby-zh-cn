.class public Lcom/android/settingslib/widget/IllustrationPreference;
.super Landroidx/preference/Preference;
.source "IllustrationPreference.java"


# instance fields
.field private final mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private final mAnimationCallbackCompat:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private mCacheComposition:Z

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResId:I

.field private mImageUri:Landroid/net/Uri;

.field private mIsAutoScale:Z

.field private mLottieDynamicColor:Z

.field private mMaxHeight:I

.field private mMiddleGroundView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Q6qJmOhNS4B48yIiFTw9QdRJD6c(Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->lambda$startLottieAnimationWith$0(Landroid/net/Uri;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$veuDOeXhDQe09vHr8jeVB-pwz8M(ILjava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->lambda$startLottieAnimationWith$1(ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    .line 87
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference$1;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 95
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/IllustrationPreference$2;-><init>(Lcom/android/settingslib/widget/IllustrationPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    .line 482
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find content uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IllustrationPreference"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleImageFrameMaxHeight(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    .line 408
    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 413
    sget v1, Lcom/android/settingslib/widget/preference/illustration/R$dimen;->settingslib_illustration_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 414
    sget v2, Lcom/android/settingslib/widget/preference/illustration/R$dimen;->settingslib_illustration_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 415
    iget p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMaxHeight:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 416
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 417
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 421
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    return-void
.end method

.method private handleImageWithAnimation(Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/ViewGroup;)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 353
    invoke-static {p1}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 354
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 355
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 362
    invoke-static {p1}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 363
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 364
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;Landroid/net/Uri;)V

    .line 374
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    if-lez v0, :cond_6

    .line 377
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x8

    .line 382
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_1
    if-eqz v0, :cond_4

    .line 377
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 387
    :goto_3
    const-string v1, "IllustrationPreference"

    const-string v2, "Unable to open Lottie raw resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const/4 v0, 0x0

    .line 390
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 394
    invoke-static {p1}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 395
    iget p2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 396
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 398
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/IllustrationPreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 402
    :cond_5
    iget p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;I)V

    :cond_6
    :goto_5
    return-void
.end method

.method private handleMiddleGroundView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 340
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 342
    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mMiddleGroundView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 344
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 346
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 490
    sget v0, Lcom/android/settingslib/widget/preference/illustration/R$layout;->illustration_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v0, 0x0

    .line 492
    iput-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAutoScale:Z

    if-eqz p2, :cond_0

    .line 494
    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 496
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mImageResId:I

    .line 497
    sget v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    .line 500
    sget-object v1, Lcom/android/settingslib/widget/preference/illustration/R$styleable;->IllustrationPreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 502
    sget p2, Lcom/android/settingslib/widget/preference/illustration/R$styleable;->IllustrationPreference_dynamicColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mLottieDynamicColor:Z

    .line 505
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startLottieAnimationWith$0(Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid illustration image uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IllustrationPreference"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$startLottieAnimationWith$1(ILjava/lang/Throwable;)V
    .locals 2

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid illustration resource id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IllustrationPreference"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static resetAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 467
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    .line 472
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    goto :goto_0

    .line 473
    :cond_1
    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v0, :cond_2

    .line 474
    move-object v0, p0

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    invoke-interface {v0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;->clearAnimationCallbacks()V

    .line 477
    :cond_2
    :goto_0
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method private static resetAnimations(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 461
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/widget/IllustrationPreference;->resetAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 463
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method private startAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 425
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    .line 430
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    .line 431
    :cond_1
    instance-of v0, p1, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    if-eqz v0, :cond_2

    .line 432
    move-object v0, p1

    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;

    iget-object p0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mAnimationCallbackCompat:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-interface {v0, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    goto :goto_0

    .line 433
    :cond_2
    instance-of p0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_3

    .line 434
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 437
    :cond_3
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method private static startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 1

    .line 453
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 455
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 p1, -0x1

    .line 456
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 457
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private static startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;Landroid/net/Uri;)V
    .locals 2

    .line 443
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->getInputStreamFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 444
    new-instance v1, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settingslib/widget/IllustrationPreference$$ExternalSyntheticLambda1;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    const/4 p1, 0x0

    .line 446
    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 447
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 448
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 126
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 128
    sget v0, Lcom/android/settingslib/widget/preference/illustration/R$id;->illustration_frame:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 130
    sget v1, Lcom/android/settingslib/widget/preference/illustration/R$id;->background_view:I

    .line 131
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 132
    sget v2, Lcom/android/settingslib/widget/preference/illustration/R$id;->middleground_layout:I

    .line 133
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 134
    sget v3, Lcom/android/settingslib/widget/preference/illustration/R$id;->lottie_view:I

    .line 135
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 138
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 139
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 140
    invoke-virtual {v4, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 148
    :goto_0
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 149
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-boolean v3, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mCacheComposition:Z

    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/IllustrationPreference;->handleImageWithAnimation(Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/ViewGroup;)V

    .line 153
    invoke-direct {p0, v1, p1}, Lcom/android/settingslib/widget/IllustrationPreference;->handleImageFrameMaxHeight(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 155
    iget-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mIsAutoScale:Z

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 157
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    .line 158
    :cond_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 156
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settingslib/widget/IllustrationPreference;->handleMiddleGroundView(Landroid/view/ViewGroup;)V

    .line 167
    iget-boolean v0, p0, Lcom/android/settingslib/widget/IllustrationPreference;->mLottieDynamicColor:Z

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    :cond_4
    return-void
.end method
