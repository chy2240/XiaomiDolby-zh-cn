.class final Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $subTitle:Lkotlin/jvm/functions/Function2;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $titleContentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$titleContentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$subTitle:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p5, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$titleContentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$subTitle:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget p0, p0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$Titles$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt;->access$Titles(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
