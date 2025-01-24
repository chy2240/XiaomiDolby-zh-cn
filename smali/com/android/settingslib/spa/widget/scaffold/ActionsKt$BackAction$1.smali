.class final Lcom/android/settingslib/spa/widget/scaffold/ActionsKt$BackAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Actions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $contentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/ActionsKt$BackAction$1;->$contentDescription:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/scaffold/ActionsKt$BackAction$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 59
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 59
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.widget.scaffold.BackAction.<anonymous> (Actions.kt:58)"

    const v2, 0x3ed525ff

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 60
    :cond_2
    sget-object p2, Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;->INSTANCE:Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;

    invoke-static {p2}, Landroidx/compose/material/icons/automirrored/outlined/ArrowBackKt;->getArrowBack(Landroidx/compose/material/icons/Icons$AutoMirrored$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/settingslib/spa/widget/scaffold/ActionsKt$BackAction$1;->$contentDescription:Ljava/lang/String;

    const p0, 0x3d642396    # 0.055698f

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 62
    invoke-static {}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;->isSpaExpressiveEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 63
    sget-object p2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsDimension;

    invoke-virtual {p2}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getActionIconWidth-D9Ej5fM()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getActionIconHeight-D9Ej5fM()F

    move-result v3

    invoke-static {p0, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 64
    sget-object v2, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsShape;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/theme/SettingsShape;->getCornerExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 65
    sget-object p0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    sget v2, Landroidx/compose/material3/MaterialTheme;->$stable:I

    invoke-virtual {p0, p1, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/ColorScheme;->getSurfaceContainerHigh-0d7_KjU()J

    move-result-wide v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 66
    invoke-virtual {p2}, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->getActionIconPadding-D9Ej5fM()F

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_3
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1

    .line 62
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const-wide/16 v3, 0x0

    move-object v5, p1

    .line 59
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_3
    return-void
.end method
