.class Lcom/android/settingslib/widget/FooterPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "FooterPreference.java"


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/widget/FooterPreference;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settingslib/widget/FooterPreference;Landroid/content/Intent;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$1;->this$0:Lcom/android/settingslib/widget/FooterPreference;

    iput-object p2, p0, Lcom/android/settingslib/widget/FooterPreference$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/android/settingslib/widget/FooterPreference$1;->this$0:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreference$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
