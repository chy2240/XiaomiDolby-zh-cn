.class public final Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;
.super Ljava/lang/Object;
.source "FontScaleConverterFactory.android.kt"


# static fields
.field public static final $stable:I

.field private static final CommonFontSizes:[F

.field public static final INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

.field private static final LookupTablesWriteLock:[Ljava/lang/Object;

.field private static volatile sLookupTables:Landroidx/collection/SparseArrayCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-direct {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;-><init>()V

    sput-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    const/16 v1, 0x9

    .line 37
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    .line 43
    new-instance v2, Landroidx/collection/SparseArrayCompat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 50
    new-array v2, v4, [Ljava/lang/Object;

    sput-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->LookupTablesWriteLock:[Ljava/lang/Object;

    .line 56
    monitor-enter v2

    .line 58
    :try_start_0
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 60
    new-instance v6, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    .line 61
    new-array v7, v1, [F

    fill-array-data v7, :array_1

    .line 62
    new-array v8, v1, [F

    fill-array-data v8, :array_2

    .line 60
    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const v7, 0x3f933333    # 1.15f

    .line 57
    invoke-direct {v0, v3, v7, v6}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 66
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 68
    new-instance v6, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    .line 69
    new-array v7, v1, [F

    fill-array-data v7, :array_3

    .line 70
    new-array v8, v1, [F

    fill-array-data v8, :array_4

    .line 68
    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const v7, 0x3fa66666    # 1.3f

    .line 65
    invoke-direct {v0, v3, v7, v6}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 74
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 76
    new-instance v6, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    .line 77
    new-array v7, v1, [F

    fill-array-data v7, :array_5

    .line 78
    new-array v8, v1, [F

    fill-array-data v8, :array_6

    .line 76
    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 73
    invoke-direct {v0, v3, v7, v6}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 82
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 84
    new-instance v6, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    .line 85
    new-array v7, v1, [F

    fill-array-data v7, :array_7

    .line 86
    new-array v8, v1, [F

    fill-array-data v8, :array_8

    .line 84
    invoke-direct {v6, v7, v8}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const v7, 0x3fe66666    # 1.8f

    .line 81
    invoke-direct {v0, v3, v7, v6}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 90
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 92
    new-instance v6, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    .line 93
    new-array v7, v1, [F

    fill-array-data v7, :array_9

    .line 94
    new-array v1, v1, [F

    fill-array-data v1, :array_a

    .line 92
    invoke-direct {v6, v7, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 89
    invoke-direct {v0, v3, v1, v6}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 97
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v2

    .line 98
    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v4}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    const v1, 0x3f83d70a    # 1.03f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v4, v5

    :cond_0
    if-nez v4, :cond_1

    .line 100
    const-string v0, "You should only apply non-linear scaling to font scales > 1"

    .line 54
    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    .line 102
    sput v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->$stable:I

    return-void

    :catchall_0
    move-exception v0

    .line 56
    monitor-exit v2

    throw v0

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_2
    .array-data 4
        0x41133333    # 9.2f
        0x41380000    # 11.5f
        0x415ccccd    # 13.8f
        0x41833333    # 16.4f
        0x419e6666    # 19.8f
        0x41ae6666    # 21.8f
        0x41c9999a    # 25.2f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_3
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_4
    .array-data 4
        0x41266666    # 10.4f
        0x41500000    # 13.0f
        0x4179999a    # 15.6f
        0x41966666    # 18.8f
        0x41accccd    # 21.6f
        0x41bccccd    # 23.6f
        0x41d33333    # 26.4f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_6
    .array-data 4
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_7
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_8
    .array-data 4
        0x41666666    # 14.4f
        0x41900000    # 18.0f
        0x41accccd    # 21.6f
        0x41c33333    # 24.4f
        0x41dccccd    # 27.6f
        0x41f66666    # 30.8f
        0x42033333    # 32.8f
        0x420b3333    # 34.8f
        0x42c80000    # 100.0f
    .end array-data

    :array_9
    .array-data 4
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41600000    # 14.0f
        0x41900000    # 18.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_a
    .array-data 4
        0x41800000    # 16.0f
        0x41a00000    # 20.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
        0x42080000    # 34.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createInterpolatedTableBetween(Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;
    .locals 5

    .line 189
    sget-object p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    array-length v0, p0

    new-array v0, v0, [F

    .line 190
    array-length p0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 191
    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    aget v2, v2, v1

    .line 192
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertSpToDp(F)F

    move-result v3

    .line 193
    invoke-interface {p2, v2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;->convertSpToDp(F)F

    move-result v2

    .line 194
    sget-object v4, Landroidx/compose/ui/unit/fontscaling/MathUtils;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/MathUtils;

    invoke-virtual {v4, v3, v2, p3}, Landroidx/compose/ui/unit/fontscaling/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-instance p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    sget-object p1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    return-object p0
.end method

.method private final get(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;
    .locals 1

    .line 225
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-direct {p0, p1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->getKey(F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    return-object p0
.end method

.method private final getKey(F)I
    .locals 0

    .line 0
    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private final getScaleFromKey(I)F
    .locals 0

    .line 0
    int-to-float p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private final put(FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V
    .locals 2

    .line 209
    sget-object p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->LookupTablesWriteLock:[Ljava/lang/Object;

    monitor-enter p0

    .line 210
    :try_start_0
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    .line 211
    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-direct {v1, v0, p1, p2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    .line 212
    sput-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    .line 213
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final putInto(Landroidx/collection/SparseArrayCompat;FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V
    .locals 0

    .line 221
    invoke-direct {p0, p2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->getKey(F)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-direct {v2, p1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->get(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 132
    :cond_1
    sget-object v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-direct {p0, p1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->getKey(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 135
    sget-object p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    return-object p0

    :cond_2
    add-int/2addr v2, v1

    neg-int v2, v2

    add-int/lit8 v3, v2, -0x1

    .line 140
    sget-object v4, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lt v2, v4, :cond_3

    .line 145
    new-instance v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    new-array v3, v1, [F

    aput v5, v3, v0

    new-array v1, v1, [F

    aput p1, v1, v0

    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    .line 148
    invoke-direct {p0, p1, v2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->put(FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    goto :goto_2

    :cond_3
    if-gez v3, :cond_4

    .line 157
    new-instance v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;

    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->CommonFontSizes:[F

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterTable;-><init>([F[F)V

    :goto_0
    move v6, v5

    goto :goto_1

    .line 159
    :cond_4
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v5

    .line 160
    sget-object v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    goto :goto_0

    .line 162
    :goto_1
    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->getScaleFromKey(I)F

    move-result v7

    .line 164
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/MathUtils;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/MathUtils;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/unit/fontscaling/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    .line 174
    sget-object v3, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->sLookupTables:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    .line 172
    invoke-direct {p0, v0, v2, v1}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->createInterpolatedTableBetween(Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v2

    .line 179
    invoke-direct {p0, p1, v2}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->put(FLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    :goto_2
    return-object v2
.end method

.method public final isNonLinearFontScalingActive(F)Z
    .locals 0

    .line 0
    const p0, 0x3f83d70a    # 1.03f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
