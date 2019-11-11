Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCA1F6E16
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 06:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vl+qOCoC5OolLR8VeqB/0PnQR20Rd8VO+pMwHTRI5OQ=; b=IafC75OsNdNnNO
	+MOsDUls3JsbTKBA1YqCoq6bhGE+8XVry1TMk7g1rI4R3yD9oYYCBFKnh1qJ9Pm0VE5NYwu0pxKhl
	JXr6aldAHwiQ4x8u/byk5B7d2zCmCNPMQG4S7OW94RmoqSDnKjHk1DhaYCxY/fn9mVlMpiV13GDE8
	18HuN8y+CNgssYj1NfhRdNcVWXnGKQ0ixSBlGkSBljzL3MX9BPA7CdAfV8pOPFD9RonjbMPAEUGQC
	z+OdbX0ra52Y1NxJaQvymY07dVDiroaZ7vhRsUCK8+5UM8L3Lrvu6jce2hz+gmY2btabRcRPqEtWE
	X2cSdVcYU08jYUXu5ibw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2Ef-0001TU-9t; Mon, 11 Nov 2019 05:27:33 +0000
Received: from mail-eopbgr700065.outbound.protection.outlook.com
 ([40.107.70.65] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2Eb-0001Sy-NV
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 05:27:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ovrm6+lsimbAY/a9CpL/pbf4IgbjsA2pYUNseXzTUGn2qw9nQbygX5pkLukOEfUUd+ivN25fprOU4Him3NsKjNxj3TCWCumaRXYRXBcAc1GR8dIEk6C8I3uPV+oI2/ZT+keu5deKwckxhH5GvpcmAJv4EZs/eTkpp4jjfOJPLVjjro0IH1YcgU76vYHzYuUUvEpcQhQAv7VaNBZq3gum7+JxtPkj6WoNx2DpqOce15Nl+qYc6/XvrK+n8IUVROsTBvgc7vebdVCKaP0TOgH8NCRhzo7hgcypbUZmjoBvXsxAsiN4v7ueWXFMISUS59rriGUlVIESYltQGP6T5l1jjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Se3OeNvAjWB9h+86QppBmRqJMHVhMyyB6Zkm69It3qQ=;
 b=Nxh3StlKj//wCqml4adVsVnxsC3mooeT+zgIRl4M/X040X4gFYMYEBScQUQ2FK9MT9WR1gy+o73aUp3IkK95zCgqOdAqBw3OL4Su8E927/vLyQfwf8oF/0lGMF7eaDNtvFqvmbjSuc8Dn9xFkr/f6pJPA/XXywovFpres/dv26LRK74nG1B7YgiFm21+1uoABnLUKZh6FOdNv9RPo8MugJWO6XiQWI71Oh82O37xgZd/5AB7pSq6czpSLY3/G51RymJiUrjDh8b5qw6REmJvPqJK3kQqYzngnjxLcgvoAXP1uagNVM1yDC0teZVUzsHXVOEKA9OUm9DnJRfW+B8Pgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Se3OeNvAjWB9h+86QppBmRqJMHVhMyyB6Zkm69It3qQ=;
 b=r1PgjS4Uc0vcgk3vR96SCOAcb2b5s+ZYmgNFA4bck5tt9u3C/nerCS8xhdvE4cr8kvZskma3gnCa362r6SpRv6x2ADaLJlk8GdQZSM/lzLoWsqNasH9O2twnn3qbRITWIPyN5nbZiWecqzZ/Z1UWflesnPTn9ApzPWPDtQqGMi4=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3638.namprd13.prod.outlook.com (20.180.15.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.17; Mon, 11 Nov 2019 05:27:26 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2451.018; Mon, 11 Nov 2019
 05:27:26 +0000
From: Yash Shah <yash.shah@sifive.com>
To: "Paul Walmsley ( Sifive)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [PATCH] RISC-V: Add address map dumper
Thread-Topic: [PATCH] RISC-V: Add address map dumper
Thread-Index: AQHVmFCzGZwFnAd1O0S/YrXUtDW+cw==
Date: Mon, 11 Nov 2019 05:27:25 +0000
Message-ID: <1573450015-16475-1-git-send-email-yash.shah@sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::13) To CH2PR13MB3368.namprd13.prod.outlook.com
 (2603:10b6:610:2c::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6363a881-4582-4673-db40-08d76667d61a
x-ms-traffictypediagnostic: CH2PR13MB3638:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3638BA29EF972D7019278A958C740@CH2PR13MB3638.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(346002)(376002)(366004)(39840400004)(189003)(199004)(26005)(7416002)(7736002)(305945005)(102836004)(6512007)(386003)(6506007)(186003)(3846002)(6116002)(6486002)(6436002)(66066001)(486006)(44832011)(2616005)(476003)(2906002)(478600001)(14454004)(50226002)(2501003)(25786009)(99286004)(110136005)(54906003)(71190400001)(71200400001)(8936002)(36756003)(316002)(8676002)(81156014)(66946007)(81166006)(66476007)(86362001)(4326008)(66446008)(64756008)(66556008)(107886003)(2201001)(14444005)(256004)(5660300002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3638;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IddJbKRlD3Al+7zR74dagrgj3wgbuM/pbwHkfDUI+BVxeNd/aEFUKnT0xRUX7Cn+24T6e94QBvJlJsesFbBwVXQrqP/By7s0pRn0HxFtFPGWDcxeaZPkj7xHzv7yWF+kEvajvJxYPaas2LsOTn85VE9+MCx2RgEqP8AtU+uuQlyIqwx9Kh25rCmXDbXM/5aYiWeeeQ/E+itJx4cKUSB/oHOUv1qJO2I5oDSCsGvYnWusO1Foa3N6ch4DD/AcvdSiKPHx1JXKYc0/wGAgeNotVJZ4HP4UMuJI3SnrzVEtcFqXrYix7Y7PgtlNIF1VQKJ1kEnj65+NpUcYj0M6h4ely8YdLjYAFo2YWmfi1UFuEF7tOxGTSlR97BMvi99ZGiPBcgndrx5s4StFrpllEMKt+Qw05NaXz5aCSoTFsPVrFWFo7PcfdZYr7BOgDJemg6AC
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6363a881-4582-4673-db40-08d76667d61a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 05:27:26.0051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AWg6NQq42aGa9s5/gCGGgn0AivbCH9ER/RCbH148L9XORaycy97QGr6L2/LpyU9XZ/Bkvu8IOGb9W5jJ4jMzhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3638
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_212729_832201_764CB9E9 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "logang@deltatee.com" <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add support for dumping the kernel address space layout to the console.
User can enable CONFIG_DEBUG_VM_LAYOUT to dump the virtual memory region
into dmesg buffer during boot-up.

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive Unleashed
board.
---
 arch/riscv/Kconfig.debug |  9 +++++++++
 arch/riscv/mm/init.c     | 30 ++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
index e69de29..cdedfd3 100644
--- a/arch/riscv/Kconfig.debug
+++ b/arch/riscv/Kconfig.debug
@@ -0,0 +1,9 @@
+config DEBUG_VM_LAYOUT
+	bool "Print virtual memory layout on boot up"
+	depends on DEBUG_KERNEL
+	help
+	  Say Y here if you want to dump the kernel virtual memory layout to
+	  dmesg log on boot up. This information is only useful for kernel
+	  developers who are working in architecture specific areas of the
+	  kernel. It is probably not a good idea to enable this feature in a
+	  production kernel.
diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index 79cfb35..fcb8144 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -55,6 +55,36 @@ void __init mem_init(void)
 	memblock_free_all();
 
 	mem_init_print_info(NULL);
+#ifdef CONFIG_DEBUG_VM_LAYOUT
+#define MLK(b, t) b, t, (((t) - (b)) >> 10)
+#define MLM(b, t) b, t, (((t) - (b)) >> 20)
+#define MLK_ROUNDUP(b, t) b, t, DIV_ROUND_UP(((t) - (b)), SZ_1K)
+
+
+	pr_notice("Virtual kernel memory layout:\n"
+			"    fixmap  : 0x%08lx - 0x%08lx   (%4ld kB)\n"
+			"    vmemmap : 0x%08lx - 0x%08lx   (%4ld MB)\n"
+			"    vmalloc : 0x%08lx - 0x%08lx   (%4ld MB)\n"
+			"    lowmem  : 0x%08lx - 0x%08lx   (%4ld MB)\n"
+			"      .init : 0x%px - 0x%px   (%4td kB)\n"
+			"      .text : 0x%px - 0x%px   (%4td kB)\n"
+			"      .data : 0x%px - 0x%px   (%4td kB)\n"
+			"       .bss : 0x%px - 0x%px   (%4td kB)\n",
+
+			MLK(FIXADDR_START, FIXADDR_TOP),
+			MLM(VMEMMAP_START, VMEMMAP_END),
+			MLM(VMALLOC_START, VMALLOC_END),
+			MLM(PAGE_OFFSET, (unsigned long)high_memory),
+
+			MLK_ROUNDUP(__init_begin, __init_end),
+			MLK_ROUNDUP(_text, _etext),
+			MLK_ROUNDUP(_sdata, _edata),
+			MLK_ROUNDUP(__bss_start, __bss_stop));
+
+#undef MLK
+#undef MLM
+#undef MLK_ROUNDUP
+#endif
 }
 
 #ifdef CONFIG_BLK_DEV_INITRD
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
