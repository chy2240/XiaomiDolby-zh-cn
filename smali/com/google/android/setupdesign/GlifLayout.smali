.class public Lcom/google/android/setupdesign/GlifLayout;
.super Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.source "GlifLayout.java"


# static fields
.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field private applyPartnerHeavyThemeResource:Z

.field private backgroundBaseColor:Landroid/content/res/ColorStateList;

.field private backgroundPatterned:Z

.field private primaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-class v1, Lcom/google/android/setupdesign/GlifLayout;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    const/4 p1, 0x0

    .line 100
    sget p2, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 105
    sget p1, Lcom/google/android/setupdesign/R$attr;->sudLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 111
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudUsePartnerHeavyTheme:I

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 125
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    .line 127
    new-instance v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v3, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 128
    new-instance v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v3, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 129
    new-instance v1, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/IconMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v3, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 130
    new-instance v1, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/ProfileMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v3, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-virtual {p0, v3, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 131
    new-instance v1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class p1, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 132
    new-instance p1, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;-><init>(Lcom/google/android/setupdesign/GlifLayout;)V

    const-class p2, Lcom/google/android/setupdesign/template/IllustrationProgressMixin;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 133
    new-instance p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 134
    const-class p2, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 138
    new-instance v1, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v1, p1, p2}, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 142
    :cond_2
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudColorPrimary:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateContentBackgroundColorWithPartnerConfig()V

    .line 150
    :cond_4
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 152
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 159
    invoke-static {p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    .line 166
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V

    .line 170
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 172
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudBackgroundBaseColor:I

    .line 173
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 176
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudBackgroundPatterned:I

    .line 177
    invoke-virtual {v0, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundPatterned(Z)V

    .line 180
    sget p1, Lcom/google/android/setupdesign/R$styleable;->SudGlifLayout_sudStickyHeader:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_7

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->inflateStickyHeader(I)Landroid/view/View;

    .line 184
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private tryApplyPartnerCustomizationStyleToShortDescription()V
    .locals 2

    .line 201
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 203
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    if-eqz v1, :cond_0

    .line 204
    invoke-static {v0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationHeavyStyle(Landroid/widget/TextView;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 206
    invoke-static {v0}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationLightStyle(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBackground()V
    .locals 2

    .line 461
    sget v0, Lcom/google/android/setupdesign/R$id;->suc_layout_status:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 464
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 470
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    if-eqz v1, :cond_2

    .line 471
    new-instance v1, Lcom/google/android/setupdesign/GlifPatternDrawable;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/GlifPatternDrawable;-><init>(I)V

    goto :goto_1

    .line 472
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 473
    :goto_1
    const-class v0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/StatusBarMixin;

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private updateContentBackgroundColorWithPartnerConfig()V
    .locals 3

    .line 518
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 526
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 307
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    .line 309
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 327
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 328
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public inflateStickyHeader(I)Landroid/view/View;
    .locals 1

    .line 321
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_sticky_header:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 322
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 323
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 502
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 504
    invoke-static {p1}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    .line 505
    invoke-static {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    .line 506
    sget-object v0, Lcom/google/android/setupdesign/GlifLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmbeddedActivityOnePaneEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isActivityEmbedded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/util/Logger;->atVerbose(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 190
    const-class v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/IconMixin;->tryApplyPartnerCustomizationStyle()V

    .line 191
    const-class v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->tryApplyPartnerCustomizationStyle()V

    .line 192
    const-class v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/DescriptionMixin;->tryApplyPartnerCustomizationStyle()V

    .line 193
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->tryApplyPartnerCustomizationStyle()V

    .line 194
    const-class v0, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/ProfileMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ProfileMixin;->tryApplyPartnerCustomizationStyle()V

    .line 195
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationStyleToShortDescription()V

    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_1

    .line 292
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_template:I

    .line 294
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_embedded_template:I

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->isForceTwoPaneEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_template_two_pane:I

    .line 301
    :cond_1
    :goto_0
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 434
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->backgroundPatterned:Z

    .line 452
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 416
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateBackground()V

    .line 417
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public shouldApplyPartnerHeavyThemeResource()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLayout;->applyPartnerHeavyThemeResource:Z

    if-nez v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V
    .locals 3

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_CONTENT_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 534
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    .line 536
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 539
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p0

    .line 540
    invoke-virtual {p0, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    float-to-int p0, p0

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eq p0, v0, :cond_0

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 543
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected updateLandscapeMiddleHorizontalSpacing()V
    .locals 7

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/R$dimen;->sud_glif_land_middle_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAND_MIDDLE_HORIZONTAL_SPACING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 216
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    .line 223
    :cond_0
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_landscape_header_area:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 228
    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/setupdesign/R$attr;->sudMarginEnd:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 236
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v3, v4

    .line 238
    :goto_0
    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v4, v3

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 240
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 254
    :cond_2
    sget v3, Lcom/google/android/setupdesign/R$id;->sud_landscape_content_area:I

    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 259
    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    .line 263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v4, p0, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    float-to-int p0, p0

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v4, Lcom/google/android/setupdesign/R$attr;->sudMarginStart:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 267
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    move p0, v4

    :goto_1
    if-eqz v1, :cond_4

    .line 271
    div-int/lit8 v0, v0, 0x2

    sub-int v2, v0, p0

    .line 276
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    .line 277
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 278
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 274
    invoke-virtual {v3, v2, p0, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    return-void
.end method
