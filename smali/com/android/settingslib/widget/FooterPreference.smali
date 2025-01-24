.class public Lcom/android/settingslib/widget/FooterPreference;
.super Landroidx/preference/Preference;
.source "FooterPreference.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field mIconVisibility:I

.field mLearnMoreListener:Landroid/view/View$OnClickListener;

.field private mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

.field private mLearnMoreText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    sget v0, Lcom/android/settingslib/widget/theme/R$attr;->footerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    .line 60
    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 211
    sget v0, Lcom/android/settingslib/widget/preference/footer/R$layout;->preference_footer:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 212
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    sget v0, Lcom/android/settingslib/widget/preference/footer/R$drawable;->settingslib_ic_info_outline_24:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    :cond_0
    const v0, 0x7ffffffe

    .line 215
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 216
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "footer_preference"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private linkifyTitle(Landroid/widget/TextView;)V
    .locals 9

    .line 68
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_0

    return-void

    .line 72
    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 73
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 74
    array-length v2, v1

    if-nez v2, :cond_1

    return-void

    .line 77
    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    array-length v0, v1

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v3, v1, v4

    .line 79
    instance-of v5, v3, Landroid/text/style/URLSpan;

    if-nez v5, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    check-cast v3, Landroid/text/style/URLSpan;

    .line 83
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 84
    const-string v6, "intent:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 88
    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 89
    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 91
    :try_start_0
    invoke-static {v5, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 92
    new-instance v8, Lcom/android/settingslib/widget/FooterPreference$1;

    invoke-direct {v8, p0, v3}, Lcom/android/settingslib/widget/FooterPreference$1;-><init>(Lcom/android/settingslib/widget/FooterPreference;Landroid/content/Intent;)V

    const/16 v3, 0x21

    .line 100
    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FooterPreference"

    invoke-static {v6, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 111
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 112
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;->linkifyTitle(Landroid/widget/TextView;)V

    .line 120
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settingslib/widget/preference/footer/R$id;->settingslib_learn_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 122
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreText:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 133
    :cond_3
    new-instance v3, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    iget-object v4, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreListener:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4}, Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/android/settingslib/widget/FooterPreference;->mLearnMoreSpan:Lcom/android/settingslib/widget/FooterPreference$FooterLearnMoreSpan;

    .line 134
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :cond_5
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settingslib/widget/preference/footer/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 143
    iget p0, p0, Lcom/android/settingslib/widget/FooterPreference;->mIconVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setSummary(I)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
