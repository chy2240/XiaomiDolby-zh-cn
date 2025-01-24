.class public Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;
.super Ljava/lang/Object;
.source "CollapsingToolbarDelegate.java"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mContentFrameLayout:Landroid/widget/FrameLayout;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

.field private mToolbar:Landroid/widget/Toolbar;

.field private mUseCollapsingToolbar:Z


# direct methods
.method public static synthetic $r8$lambda$V-cFpQ9CtwpuIuancGBRq9VDCfk(Landroid/text/StaticLayout$Builder;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->lambda$onCreateView$0(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

    .line 90
    iput-boolean p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mUseCollapsingToolbar:Z

    return-void
.end method

.method private autoSetCollapsingToolbarLayoutScrolling()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 237
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 238
    new-instance v2, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 251
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/text/StaticLayout$Builder;)V
    .locals 2

    .line 134
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    return-void
.end method


# virtual methods
.method public getContentFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mContentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/app/Activity;)Landroid/view/View;
    .locals 3

    .line 104
    iget-boolean p3, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mUseCollapsingToolbar:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 107
    sget v2, Lcom/android/settingslib/collapsingtoolbar/R$layout;->collapsing_toolbar_base_layout:I

    goto :goto_0

    .line 109
    :cond_0
    sget v2, Lcom/android/settingslib/collapsingtoolbar/R$layout;->non_collapsing_toolbar_base_layout:I

    .line 111
    :goto_0
    invoke-virtual {p1, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 112
    instance-of v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 113
    move-object v2, p1

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 115
    :cond_1
    sget v2, Lcom/android/settingslib/collapsingtoolbar/R$id;->collapsing_toolbar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 116
    sget v2, Lcom/android/settingslib/collapsingtoolbar/R$id;->app_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p3, :cond_2

    .line 122
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x1010054

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 124
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 125
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p2, :cond_3

    const p3, 0x3f8ccccd    # 1.1f

    .line 130
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLineSpacingMultiplier(F)V

    .line 132
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setHyphenationFrequency(I)V

    .line 133
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    new-instance p3, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStaticLayoutBuilderConfigurer(Lcom/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer;)V

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->autoSetCollapsingToolbarLayoutScrolling()V

    .line 142
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mContentFrameLayout:Landroid/widget/FrameLayout;

    .line 151
    const-string p2, "CTBdelegate"

    const-string p3, "onCreateView: from NonAppCompatActivity."

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$id;->action_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Toolbar;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mToolbar:Landroid/widget/Toolbar;

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

    invoke-interface {p0, p2}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;->setActionBar(Landroid/widget/Toolbar;)Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 156
    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 157
    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 158
    invoke-virtual {p0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_4
    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

    invoke-interface {p0, p1}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;->setOuterTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
