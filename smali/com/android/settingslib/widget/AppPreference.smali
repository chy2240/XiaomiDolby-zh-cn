.class public Lcom/android/settingslib/widget/AppPreference;
.super Landroidx/preference/Preference;
.source "AppPreference.java"


# instance fields
.field private mProgress:I

.field private mProgressVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget p1, Lcom/android/settingslib/widget/preference/app/R$layout;->preference_app:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 74
    iget-boolean v0, p0, Lcom/android/settingslib/widget/AppPreference;->mProgressVisible:Z

    if-eqz v0, :cond_0

    .line 75
    iget p0, p0, Lcom/android/settingslib/widget/AppPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p0, 0x0

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 78
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
