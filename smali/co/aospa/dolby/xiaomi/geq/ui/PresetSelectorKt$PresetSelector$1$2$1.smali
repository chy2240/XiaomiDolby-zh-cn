.class final Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PresetSelector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;

    invoke-direct {v0}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;-><init>()V

    sput-object v0, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;->INSTANCE:Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Landroidx/compose/ui/focus/FocusProperties;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/geq/ui/PresetSelectorKt$PresetSelector$1$2$1;->invoke(Landroidx/compose/ui/focus/FocusProperties;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 0

    const-string p0, "$this$focusProperties"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 81
    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusProperties;->setCanFocus(Z)V

    return-void
.end method
