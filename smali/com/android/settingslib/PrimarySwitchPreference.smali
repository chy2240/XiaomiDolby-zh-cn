.class public Lcom/android/settingslib/PrimarySwitchPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "PrimarySwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/CompoundButton;


# direct methods
.method public static synthetic $r8$lambda$A_3O0XQXQs3zEH7cNolLsY4uI0k(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->lambda$onBindViewHolder$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kCr0nvIM2iTrFShw0fPKNQOeI5s(Lcom/android/settingslib/PrimarySwitchPreference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    xor-int/lit8 p1, p1, 0x1

    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-static {v0, v1}, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor;->detectToggleJank(Ljava/lang/String;Landroid/view/View;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 89
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCheckedState()Ljava/lang/Boolean;
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/widget/SettingsThemeHelper;->isExpressiveTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 68
    sget p0, Lcom/android/settingslib/widget/theme/R$layout;->settingslib_expressive_preference_switch:I

    goto :goto_0

    .line 69
    :cond_0
    sget p0, Landroidx/preference/R$layout;->preference_widget_switch_compat:I

    :goto_0
    return p0
.end method

.method public getSwitch()Landroid/widget/CompoundButton;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchEnabled()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x800015

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 79
    :cond_0
    sget v0, Landroidx/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_1

    .line 81
    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/PrimarySwitchPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    if-nez v0, :cond_1

    .line 127
    :goto_0
    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    .line 129
    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
