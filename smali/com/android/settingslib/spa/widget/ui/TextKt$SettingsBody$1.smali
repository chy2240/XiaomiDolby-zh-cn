.class final Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Text.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $body:Ljava/lang/String;

.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $maxLines:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$body:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$contentDescription:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$maxLines:I

    iput p4, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$$changed:I

    iput p5, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$body:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$contentDescription:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$maxLines:I

    iget p2, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v4

    iget v5, p0, Lcom/android/settingslib/spa/widget/ui/TextKt$SettingsBody$1;->$$default:I

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/ui/TextKt;->SettingsBody(Ljava/lang/String;Ljava/lang/String;ILandroidx/compose/runtime/Composer;II)V

    return-void
.end method
