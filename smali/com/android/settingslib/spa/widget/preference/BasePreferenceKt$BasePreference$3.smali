.class final Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $singleLineSummary:Z

.field final synthetic $summary:Lkotlin/jvm/functions/Function0;

.field final synthetic $summaryContentDescription:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->$summary:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->$summaryContentDescription:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->$singleLineSummary:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 49
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 49
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.widget.preference.BasePreference.<anonymous> (BasePreference.kt:48)"

    const v2, -0x5d12bd21

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 50
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->$summary:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 51
    iget-object p2, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->$summaryContentDescription:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 52
    iget-boolean p0, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$3;->$singleLineSummary:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    :goto_1
    move v2, p0

    goto :goto_2

    :cond_3
    const p0, 0x7fffffff

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsBody(Ljava/lang/String;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_3
    return-void
.end method
