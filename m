Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E86D9669
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GClZU1WNZC3Wbu3nQgxzVtlT4vHqhiWwdNVSR5KEf0k=; b=uUY/BWqs3g6K9k
	tjJstclUzAJoGpaFMAVMjvOdRL2+ekbo/NKIyvgimKsK/htcen1d3x9Up0Nfs0gQCPxQBR7BJ+ypG
	Z/ZeU+covdMjebWVR4M6YZZYgsvOCQAf7onhM3GPYmQOea2oSvS3k2TSFSstj2CWziihI0OFEGyJi
	zQAxZ7noj3AOZpGIJM0qss3K2unjNlRRjrDQrBqFN1nPI1nqdkEvZT4smznXtSethljb+A8TmN3i9
	nTpiZBzlb3SdveMfA5L1udhJD3BjQBWednILZjOWN6nasdnx7RiQvvDfCqsN2W4xr9Q5ZKKVhAX6X
	ux4KHaHmE1TIoAaR6dHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlqz-0007X7-A2; Wed, 16 Oct 2019 16:08:49 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlqv-0007V2-3n
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242125; x=1602778125;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZmzTfG5qj0/ShH8NlNjNMPphgeVWAziCNJJHP4F1jcg=;
 b=XDJLqt0ROijTZl2iQFcXJOkNzmYjCkY6BQTnZ7gP845ZNoBeKrlEXWhb
 OiVjrqGtJ9ONZWm88h+RCDxNoxI5A5XtCtBfR5T1tTKrEiNNbeQHeYs9N
 wb6i5qXtB50N2T7LoAS9DneaKUx3+F0Pb/Y1SjnzBm2lLss5VcSxtCQ1C
 zsWM7dRp0F1OVVfyzmKsMgm8rf/PLs6eUnxdguz6N80IgVALaOD9J41dT
 qIfqai6QJWE5lSontrLN9SO4uInWRQ05kg25KEPn8s7B9n69Utrw7mhQq
 2i42xIf1ZmedL9JLIBZTEwrgjd+P2hsUnd06d3nDPn33yx6WjztKuO8oq A==;
IronPort-SDR: IdfEeGVuoxUKxImey4lnQEpjZwy/wQZiW9shdtE+m7JkphBCturLPIP+TitpR+NkdiQBMqGlFK
 vElC/cPOd5fl0aVewevVCALl/YQdWsrVyq07sBDvhldQ4rNfHEluOJudCrErA8ir0YMqvQN3E9
 OlSluONRyWbQaWqQ66XBJZjcIAzwTQoRFKB3yIIMhsQc0LUItYqbZcaCM0k8XeZfzblmZI6Z6Z
 ymFIj6XBfXjlRGfECAxpPrEGwds+JMdbxXA+238zeXJzA/bh8LSHguqIRnT9fWV8IgQFDqtggi
 azY=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="227736956"
Received: from mail-by2nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.56])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:08:42 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mwupyQz5Hpj1gi2SBA8uW/h+Qg/MkIrseQ6IRPVxsOTP96yKBw5N2jAr3uNXBhCim/cZVEh7gWfcIybjNhBAcZh7ZPCASLjCPVV0ihXao5rLaMCOsbijDgpe94PdtKyfuR3JpueTkb7Uv7LPgSrksV1M8Qm9nMrDD2Vg+nErAX8Im+HQY6o3NeIlES3uJok7ENI4WTHkUq9giPNvoK57lab/ANPejYaHpXvpIzZisQSufWG2j95rYA2gXJ+/I2Sj147cYTT/yqhBWxjvK+pTn9PFIIw3c1/1zs1ohYTekvOK6jI/ZfM9UrOoiq+RdX72hKRQ3H7pvgAx28qKVj4hSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd8iv6eUevGkw+GvTJYLdZ1DAx6Bzra73a6Mzs1JQDE=;
 b=OkS9p1rVQIZNO//49wWbhz9TJB9cPTzT4W8vaz9KyAwvRgN3oGmqxca6iBfZL75AEgJzi5ClYFUVrwgqv+3EFYb9gaDw9z6KyMQuwsS5T0+8Z0qLEshoq8wZtOkcfpRtwjq0mKjX1+2r6MRnYlsItUHPnZr+EzQCZ1xPTg89T0S0alrGljcIBcBljd7hQRPXLJ8sTOp1TESQMIej/m9OiFV1O1BU9/Ajl3ntj0WWJk3ZwfcWAVpxM9jURQzyC5JBSA+nYNwUhOddqPu/QQvJsIZC3njX6RsqBBVzxhcXJPbgEuCkok4Zj8LGHKhL1hzMeITw+D7DseQbDzfR4SRTzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sd8iv6eUevGkw+GvTJYLdZ1DAx6Bzra73a6Mzs1JQDE=;
 b=CBsLR+mcSRInU8JD97Yyr1iNJIsRPATIWWycwxuELhhqlzG1ryeQHn+id+ruM08oxA1Wkw1ZDuFFidBdE4+vVLyL673g8Rv2Y6j4YH6djXI6/16FnFQU0eAMqkrioc789rccXvn/+pgt+s/O3cxqjymVBHklUhRCvnQYNepQ2FM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7038.namprd04.prod.outlook.com (10.186.146.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 16:08:41 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:08:41 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 02/22] RISC-V: Add hypervisor extension related CSR defines
Thread-Topic: [PATCH v9 02/22] RISC-V: Add hypervisor extension related CSR
 defines
Thread-Index: AQHVhDv6Js2A3EFFa06fqJL1cHzJ6A==
Date: Wed, 16 Oct 2019 16:08:41 +0000
Message-ID: <20191016160649.24622-3-anup.patel@wdc.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
In-Reply-To: <20191016160649.24622-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.27.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5dc1e91f-0c5c-470d-250c-08d752531c58
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB7038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB703875792921EA6FF1DA8EBC8D920@MN2PR04MB7038.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(102836004)(44832011)(486006)(2616005)(476003)(386003)(25786009)(446003)(52116002)(99286004)(186003)(76176011)(55236004)(66066001)(26005)(6506007)(5660300002)(36756003)(11346002)(64756008)(6436002)(66946007)(66446008)(66476007)(66556008)(86362001)(6486002)(4326008)(6512007)(1076003)(305945005)(14454004)(256004)(7736002)(7416002)(478600001)(6116002)(71190400001)(3846002)(54906003)(110136005)(2906002)(316002)(71200400001)(8936002)(9456002)(50226002)(81156014)(81166006)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7038;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zMzY6jGkrAPy4vIusISfO8g8SUsWfVPcvAHY71Kpdrl1AGb48Rqq0rujckTSU+PmSQp5u7DokrxKPitrW/WhDTyCH+OfzUz5SZde/ne6QHBP6SCVk/b8cKqd8/bGNvZitDZF21MqJjU3UjdDmYSL/qBS3K6gnlkEWZ1FzVATAuwsr5b2GKBCSdAZeXWLQ8JG3lUhvRzQdSUASNcVqRzhHUSHNOMFnhKc7sSWTEe880gJAU8EA2jW715ZyBb0c2sq/+FfGicvVb7BtkxxsXNIYUwtcoSc7AHVnhpjK/pBtBBctCD1t5kTh4Bs8/lrO8a2TSIlf/wJh5yS32nljmbVA4tolCz/ReZ+s7JgGSUKFQZ+gnKyVfg6ch3JOFhineolBKrWaFA73kvu6tR5QWuqEYPxJaKzQw1dlD700SiUIxY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc1e91f-0c5c-470d-250c-08d752531c58
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:08:41.1694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rZdH/6uyo5p7HICoRDmsoaUZFF3UMd6UmNj9QLeUv2sM1YxTZynkyyTU78Y9bRjhsbvDu/3p9pIr8Gt3FE2S4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_090845_177821_A88CA36B 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch extends asm/csr.h by adding RISC-V hypervisor extension
related defines.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/csr.h | 58 ++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index a18923fa23c8..059c5cb22aaf 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -27,6 +27,8 @@
 #define SR_XS_CLEAN	_AC(0x00010000, UL)
 #define SR_XS_DIRTY	_AC(0x00018000, UL)
 
+#define SR_MXR		_AC(0x00080000, UL)
+
 #ifndef CONFIG_64BIT
 #define SR_SD		_AC(0x80000000, UL) /* FS/XS dirty */
 #else
@@ -59,10 +61,13 @@
 
 #define EXC_INST_MISALIGNED	0
 #define EXC_INST_ACCESS		1
+#define EXC_INST_ILLEGAL	2
 #define EXC_BREAKPOINT		3
 #define EXC_LOAD_ACCESS		5
 #define EXC_STORE_ACCESS	7
 #define EXC_SYSCALL		8
+#define EXC_HYPERVISOR_SYSCALL	9
+#define EXC_SUPERVISOR_SYSCALL	10
 #define EXC_INST_PAGE_FAULT	12
 #define EXC_LOAD_PAGE_FAULT	13
 #define EXC_STORE_PAGE_FAULT	15
@@ -72,6 +77,43 @@
 #define SIE_STIE		(_AC(0x1, UL) << IRQ_S_TIMER)
 #define SIE_SEIE		(_AC(0x1, UL) << IRQ_S_EXT)
 
+/* HSTATUS flags */
+#define HSTATUS_VTSR		_AC(0x00400000, UL)
+#define HSTATUS_VTVM		_AC(0x00100000, UL)
+#define HSTATUS_SP2V		_AC(0x00000200, UL)
+#define HSTATUS_SP2P		_AC(0x00000100, UL)
+#define HSTATUS_SPV		_AC(0x00000080, UL)
+#define HSTATUS_STL		_AC(0x00000040, UL)
+#define HSTATUS_SPRV		_AC(0x00000001, UL)
+
+/* HGATP flags */
+#define HGATP_MODE_OFF		_AC(0, UL)
+#define HGATP_MODE_SV32X4	_AC(1, UL)
+#define HGATP_MODE_SV39X4	_AC(8, UL)
+#define HGATP_MODE_SV48X4	_AC(9, UL)
+
+#define HGATP32_MODE_SHIFT	31
+#define HGATP32_VMID_SHIFT	22
+#define HGATP32_VMID_MASK	_AC(0x1FC00000, UL)
+#define HGATP32_PPN		_AC(0x003FFFFF, UL)
+
+#define HGATP64_MODE_SHIFT	60
+#define HGATP64_VMID_SHIFT	44
+#define HGATP64_VMID_MASK	_AC(0x03FFF00000000000, UL)
+#define HGATP64_PPN		_AC(0x00000FFFFFFFFFFF, UL)
+
+#ifdef CONFIG_64BIT
+#define HGATP_PPN		HGATP64_PPN
+#define HGATP_VMID_SHIFT	HGATP64_VMID_SHIFT
+#define HGATP_VMID_MASK		HGATP64_VMID_MASK
+#define HGATP_MODE		(HGATP_MODE_SV39X4 << HGATP64_MODE_SHIFT)
+#else
+#define HGATP_PPN		HGATP32_PPN
+#define HGATP_VMID_SHIFT	HGATP32_VMID_SHIFT
+#define HGATP_VMID_MASK		HGATP32_VMID_MASK
+#define HGATP_MODE		(HGATP_MODE_SV32X4 << HGATP32_MODE_SHIFT)
+#endif
+
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01
 #define CSR_INSTRET		0xc02
@@ -85,6 +127,22 @@
 #define CSR_STVAL		0x143
 #define CSR_SIP			0x144
 #define CSR_SATP		0x180
+
+#define CSR_VSSTATUS		0x200
+#define CSR_VSIE		0x204
+#define CSR_VSTVEC		0x205
+#define CSR_VSSCRATCH		0x240
+#define CSR_VSEPC		0x241
+#define CSR_VSCAUSE		0x242
+#define CSR_VSTVAL		0x243
+#define CSR_VSIP		0x244
+#define CSR_VSATP		0x280
+
+#define CSR_HSTATUS		0x600
+#define CSR_HEDELEG		0x602
+#define CSR_HIDELEG		0x603
+#define CSR_HGATP		0x680
+
 #define CSR_CYCLEH		0xc80
 #define CSR_TIMEH		0xc81
 #define CSR_INSTRETH		0xc82
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
