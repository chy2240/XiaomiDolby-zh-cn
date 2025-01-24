.class public abstract Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;
.super Ljava/lang/Object;
.source "SettingsTheme.kt"


# static fields
.field private static final isSpaExpressiveEnabled$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;->INSTANCE:Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$isSpaExpressiveEnabled$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;->isSpaExpressiveEnabled$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final SettingsTheme(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x3ac0a221

    .line 30
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0xb

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 43
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 30
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "com.android.settingslib.spa.framework.theme.SettingsTheme (SettingsTheme.kt:29)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result v1

    .line 34
    invoke-static {v1, p1, v0}, Lcom/android/settingslib/spa/framework/theme/MaterialColorsKt;->materialColorScheme(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    .line 35
    invoke-static {p1, v0}, Lcom/android/settingslib/spa/framework/theme/SettingsTypographyKt;->rememberSettingsTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v3

    .line 36
    new-instance v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/16 v2, 0x36

    const v4, -0x6aa68e75

    const/4 v5, 0x1

    invoke-static {v4, v5, v0, p1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    const/16 v6, 0xc00

    const/4 v7, 0x2

    const/4 v2, 0x0

    move-object v5, p1

    .line 33
    invoke-static/range {v1 .. v7}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 43
    :cond_5
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt$SettingsTheme$2;-><init>(Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method public static final isSpaExpressiveEnabled()Z
    .locals 1

    .line 46
    sget-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsThemeKt;->isSpaExpressiveEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
