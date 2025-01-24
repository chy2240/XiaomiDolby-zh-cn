.class final Landroidx/compose/ui/window/DialogWrapper;
.super Landroidx/activity/ComponentDialog;
.source "AndroidDialog.android.kt"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final composeView:Landroid/view/View;

.field private final dialogLayout:Landroidx/compose/ui/window/DialogLayout;

.field private final maxSupportedElevation:F

.field private onDismissRequest:Lkotlin/jvm/functions/Function0;

.field private properties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V
    .locals 6

    .line 268
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 269
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 270
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->access$adjustedDecorFitsSystemWindows(Landroidx/compose/ui/window/DialogProperties;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    sget v2, Landroidx/compose/ui/R$style;->DialogWindowTheme:I

    goto :goto_0

    .line 273
    :cond_0
    sget v2, Landroidx/compose/ui/R$style;->FloatingDialogWindowTheme:I

    .line 268
    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 263
    invoke-direct {p0, v0, v2, v1, v3}, Landroidx/activity/ComponentDialog;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 256
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 257
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 258
    iput-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    const/16 p1, 0x8

    int-to-float p1, p1

    .line 109
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    .line 286
    iput p1, p0, Landroidx/compose/ui/window/DialogWrapper;->maxSupportedElevation:F

    .line 292
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x106000d

    .line 294
    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 295
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->access$adjustedDecorFitsSystemWindows(Landroidx/compose/ui/window/DialogProperties;Landroid/content/Context;)Z

    move-result v0

    .line 296
    invoke-static {p2, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 298
    new-instance v0, Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroidx/compose/ui/window/DialogLayout;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    .line 302
    sget v1, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, v1, p6}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 304
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 306
    invoke-interface {p5, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 312
    new-instance p1, Landroidx/compose/ui/window/DialogWrapper$1$2;

    invoke-direct {p1}, Landroidx/compose/ui/window/DialogWrapper$1$2;-><init>()V

    .line 311
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 297
    iput-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 336
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v3}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    .line 338
    :cond_2
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 341
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p5, -0x2

    invoke-direct {p2, p5, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p5, 0x11

    .line 345
    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object p5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 339
    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 348
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 351
    new-instance p2, Landroidx/compose/ui/window/DialogWrapper$3;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/window/DialogWrapper$3;-><init>(Landroidx/compose/ui/window/DialogWrapper;Landroid/widget/FrameLayout;)V

    .line 349
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 383
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 384
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 386
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentDialog;->setContentView(Landroid/view/View;)V

    .line 387
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 388
    invoke-static {p3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 390
    invoke-static {p3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object p1

    .line 389
    invoke-static {v0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 394
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {p0, p1, p2, p4}, Landroidx/compose/ui/window/DialogWrapper;->updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 401
    invoke-virtual {p0}, Landroidx/activity/ComponentDialog;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v3, Landroidx/compose/ui/window/DialogWrapper$4;

    invoke-direct {v3, p0}, Landroidx/compose/ui/window/DialogWrapper$4;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    return-void

    .line 292
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dialog has no window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final _init_$disableClipping(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 329
    instance-of v1, p0, Landroidx/compose/ui/window/DialogLayout;

    if-eqz v1, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 331
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroidx/compose/ui/window/DialogWrapper;->_init_$disableClipping(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final synthetic access$getDialogLayout$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogLayout;
    .locals 0

    .line 255
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    return-object p0
.end method

.method public static final synthetic access$getOnDismissRequest$p(Landroidx/compose/ui/window/DialogWrapper;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 255
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getProperties$p(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/DialogProperties;
    .locals 0

    .line 255
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    return-object p0
.end method

.method private final setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2

    .line 422
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 423
    sget-object v0, Landroidx/compose/ui/window/DialogWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 422
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method private final setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->composeView:Landroid/view/View;

    invoke-static {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/window/SecureFlagPolicy_androidKt;->shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result p1

    .line 438
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, -0x2001

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 0
    return-void
.end method

.method public final disposeComposition()V
    .locals 0

    .line 501
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 519
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogProperties;->getDecorFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 523
    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 526
    invoke-virtual {p2, v0, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    .line 415
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    .line 418
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 540
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 545
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 546
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    .line 547
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 549
    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    if-gt v2, p1, :cond_0

    .line 550
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    iget-object v2, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    if-gt v1, v2, :cond_0

    if-gt p1, v1, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return v0

    .line 558
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 505
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 506
    iget-object v0, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    invoke-virtual {v0}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnClickOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return p1
.end method

.method public final setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 432
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/window/DialogLayout;->setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 3

    .line 453
    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 454
    iput-object p2, p0, Landroidx/compose/ui/window/DialogWrapper;->properties:Landroidx/compose/ui/window/DialogProperties;

    .line 455
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/ui/window/DialogWrapper;->setSecurePolicy(Landroidx/compose/ui/window/SecureFlagPolicy;)V

    .line 456
    invoke-direct {p0, p3}, Landroidx/compose/ui/window/DialogWrapper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 457
    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getUsePlatformDefaultWidth()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/compose/ui/window/DialogLayout;->setUsePlatformDefaultWidth(Z)V

    .line 458
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->access$adjustedDecorFitsSystemWindows(Landroidx/compose/ui/window/DialogProperties;Landroid/content/Context;)Z

    move-result p1

    .line 459
    iget-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p3, p1}, Landroidx/compose/ui/window/DialogLayout;->setDecorFitsSystemWindows(Z)V

    .line 460
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnClickOutside()Z

    move-result p3

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 461
    iget-object p3, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    .line 462
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getDismissOnClickOutside()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_6

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/16 p3, 0x30

    .line 473
    :goto_1
    invoke-virtual {p0, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 474
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 476
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getUsePlatformDefaultWidth()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 482
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/ui/window/DialogProperties;->getUsePlatformDefaultWidth()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    .line 488
    :cond_4
    iget p1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 p2, 0x11

    if-ne p1, v0, :cond_5

    .line 489
    iget p1, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p1, v1, :cond_5

    .line 490
    iget p1, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq p1, p2, :cond_6

    .line 492
    :cond_5
    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 493
    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 494
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 495
    invoke-virtual {p0, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    return-void
.end method
