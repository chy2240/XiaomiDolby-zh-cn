.class public final Lkotlin/collections/builders/MapBuilder$Companion;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lkotlin/collections/builders/MapBuilder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeHashSize(Lkotlin/collections/builders/MapBuilder$Companion;I)I
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->computeHashSize(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeShift(Lkotlin/collections/builders/MapBuilder$Companion;I)I
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Companion;->computeShift(I)I

    move-result p0

    return p0
.end method

.method private final computeHashSize(I)I
    .locals 0

    const/4 p0, 0x1

    .line 490
    invoke-static {p1, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method private final computeShift(I)I
    .locals 0

    .line 492
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final getEmpty$kotlin_stdlib()Lkotlin/collections/builders/MapBuilder;
    .locals 0

    .line 488
    invoke-static {}, Lkotlin/collections/builders/MapBuilder;->access$getEmpty$cp()Lkotlin/collections/builders/MapBuilder;

    move-result-object p0

    return-object p0
.end method
