.class public final Landroidx/compose/runtime/LazyValueHolder;
.super Ljava/lang/Object;
.source "ValueHolders.kt"

# interfaces
.implements Landroidx/compose/runtime/ValueHolder;


# instance fields
.field private final current$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/LazyValueHolder;->current$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCurrent()Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/compose/runtime/LazyValueHolder;->current$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public readValue(Landroidx/compose/runtime/PersistentCompositionLocalMap;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/compose/runtime/LazyValueHolder;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
