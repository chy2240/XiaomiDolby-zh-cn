.class final Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;
.super Lkotlin/jvm/internal/Lambda;
.source "EntryHighlight.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $$changed:I

.field final synthetic $content:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;->$content:Lkotlin/jvm/functions/Function2;

    iput p2, p0, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 0
    iget-object p2, p0, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;->$content:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt$EntryHighlight$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/android/settingslib/spa/framework/util/EntryHighlightKt;->EntryHighlight(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
