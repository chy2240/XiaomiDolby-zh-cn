.class final Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move/from16 v0, p2

    and-int/lit8 v1, v0, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 80
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.widget.preference.ComposableSingletons$BasePreferenceKt.lambda-4.<anonymous> (BasePreference.kt:79)"

    const v3, -0x67b6f01f

    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v5, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt$lambda-4$1$1;

    sget-object v0, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;

    invoke-virtual {v0}, Lcom/android/settingslib/spa/widget/preference/ComposableSingletons$BasePreferenceKt;->getLambda-3$frameworks__base__packages__SettingsLib__Spa__spa__android_common__SpaLib()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    const/16 v18, 0x0

    const/16 v19, 0xfbc

    const-string v4, "Screen Saver"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const v17, 0x180036

    move-object/from16 v16, p1

    invoke-static/range {v4 .. v19}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt;->BasePreference-jXF2sa8(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
