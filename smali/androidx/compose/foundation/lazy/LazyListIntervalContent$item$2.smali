.class final Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyListIntervalContent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $contentType:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;->$contentType:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;->$contentType:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent$item$2;->invoke(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
