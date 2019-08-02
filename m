Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAE07EDCD
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:47:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbMJiSCuSv4qaYHFqBNly+vPJyA/okPNQUoEichbNh4=; b=ZoUlaEk7WXp+FZ
	5Fewz/Npud3Vtb0mCYV9ZDxZyoJvL6xQTYFecwexHmhBSQzhWzjsDWQ4n2EfmXj7xGnLl3Ulvb4aS
	rjWwiQRkE4/CDw3KazzYi9zXdBVNJIi+BtWq43Sqt9ZVbxysDXCy9dW8HBNLd+51ysV+Wf3WhfDAT
	21QUXtyGg6QaNFTdxZ79Vj5zBTXVfn/hsN6x51g0VIwW2NRN+IJRLUc2Ve93q6EtkC6vlQVGRhdZR
	nRfXWFmnAZ2RqBEB1Gy1K+ymvla1wcDgAQgXSMP3ZWG9sv5tUCQZFRvMz0F4JCaH/ES2AbtrtNd4a
	LKG4rirkufcyABiff/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSHY-0002rM-VD; Fri, 02 Aug 2019 07:47:21 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSHO-0002pO-EV
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564732031; x=1596268031;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L+rtiKY4HuYglhnBlULe428dgE6r4vWOTN4fKVrQduw=;
 b=qVJZTl2+qxGGPqQX4hxItyxo84moCIvTIzv4iEUGugulo9lAJUI7CSjT
 3HmYeBj9i6pwSOlmay+qAw0TabXU81UwWxK1fEvrwJpo8PcD4jT9JkA7t
 awFvukUQl6hfU6is0bLxeERewS9O92Ceiq+v2L9ZdHgYqq+2NLZ9UWRVV
 v6VVfq7DB+v36G9hAWiJlQ0zu3HVQGCWLAD+EXgUGF+/xD4dCUdMOQdnS
 e9v8j3TfqEStwPtloPVsKBkIK5CMxpz8NDvxmLNm4ebEZPbkIVVluGtY+
 /jqPBhfAkixvJxbVS9BvGi/pX4/7dXNVW8UuUy5LF0gjRucgOoQBoGAFb g==;
IronPort-SDR: lU8Cs5HSIW+BVcWOGfIS3MyBWT6Rh7jKFBT+Ot4cuGef4VlgzLRLyPA8kiTjZ/lnYWCQgyeNtg
 TnEUVC5TllLWNS70yWLH69qZ7JhuNzoCK+n7aFNfNv44PmvD5XERCB5HzubPr+xbrhlMAlTLwo
 I6whqNiiMSi46eziq3w4v9+4hQGjiYsv27wFeE1pLaB1/KdUgQHwm99pgHeTvUBjFo6L14ehz1
 cfjV1W1jVzWz6tYDSBuaKIRwK7Ff0G4vH0M8VcrMPpZrG2DkGPBaBq0CPZPcxNL4UXbzrAQAjD
 8tA=
X-IronPort-AV: E=Sophos;i="5.64,337,1559491200"; d="scan'208";a="116382449"
Received: from mail-cys01nam02lp2052.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.52])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 15:47:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=THZhTWF2GbjP+5LiS9cbkn05crSmK0eMrUhSl9tyn6KzriJhHlzkiuOTph7CpRyO7zzKplCDQAh2/8et98BQq6CSoHWjIuJjQ9+ktUjb0vrbxnhbx6FmH6HlvUjcgknNl42hcl5CK6QSwz5eDdd+Ol1+MkpUTDDG53SvabIW4jiXARvYCy+TxM32iKzTObdQ3xFEdmZvsJjFbTtEFJvlcMR85B+KADX9aaQWaQIXeoSF0KCbebkWYEpGYR0zdbvExvQcjPBSWzbhSwMO3hUYU/W25iQ+AXZqXmZSxK7hQ4YQrYij+gG+cNvu1eb97ouQoI8iRHMNSNShmnNV/2twrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUgM7OHxuVF3f2V8udoOdYm39NTAu1UVK8Cv8strlsA=;
 b=lwEcRO/JB0FpCiFqrHIpyyk1qAwgVN/IY8K6yZQZ/sITtd52Jog4vp1lGfIuMEProZ56wxm6Gw+14+Z63YPdtT1q/ctiei7GjBb1s9GrLCG/d/BRyGJFKfzbbbccYOFcFUrJ4TH+ZJ6RrHqoSfDFphRThvMcvWjmZT7PJgnfLanacd31nq4zwjOpoFZaF9jiMb5amW+VXEzJDBxR/wHmBaNyx4g/sHzAnAQK4ilCPC8xHro1QFMzUDcoAwSIADX4iKkhpOwb7K4rdlStJqXnQE5x2x56AgC6fWW0y7u5McuKpmJVBMOOawl+3h5O/VDxdsVbFdqkvjFwCjxdeWLDqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUgM7OHxuVF3f2V8udoOdYm39NTAu1UVK8Cv8strlsA=;
 b=pjvX1MlB4pJr4eModVryo2eunCblMcRPV3q+ZHbB8Mh3s7r7RBHWsED5cNAJ+2lkLohSVGy0NOhOfBKZHU/ZoBawaw7fBhFFssjhJX9G2a0hLCq/wR8ajKwUllV+KyUpdD8cAZg6NBdyXA0VQYWDi/D0bto8w6W+a93NX1YhqzM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5566.namprd04.prod.outlook.com (20.178.248.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Fri, 2 Aug 2019 07:47:08 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 07:47:08 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH v2 02/19] RISC-V: Export few kernel symbols
Thread-Topic: [RFC PATCH v2 02/19] RISC-V: Export few kernel symbols
Thread-Index: AQHVSQZ8L5ije/GFW0u/4xCtgdYrqQ==
Date: Fri, 2 Aug 2019 07:47:07 +0000
Message-ID: <20190802074620.115029-3-anup.patel@wdc.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
In-Reply-To: <20190802074620.115029-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0111.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::27)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67fea376-37fa-4459-ce97-08d7171d9e59
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5566; 
x-ms-traffictypediagnostic: MN2PR04MB5566:
x-microsoft-antispam-prvs: <MN2PR04MB55667A704C1C395B1B76F0E78DD90@MN2PR04MB5566.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39850400004)(136003)(366004)(396003)(189003)(199004)(36756003)(14454004)(7736002)(54906003)(6116002)(102836004)(110136005)(71190400001)(446003)(4326008)(3846002)(5660300002)(52116002)(66066001)(2906002)(25786009)(6486002)(6506007)(386003)(55236004)(76176011)(316002)(53936002)(6436002)(4744005)(305945005)(9456002)(81156014)(64756008)(66476007)(78486014)(86362001)(66556008)(66946007)(8936002)(11346002)(476003)(68736007)(81166006)(2616005)(478600001)(486006)(26005)(1076003)(99286004)(50226002)(14444005)(256004)(71200400001)(66446008)(186003)(6512007)(44832011)(8676002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5566;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2Sz4edot52h24MvyiQz8iRpDAKx8YcOYXikN0CVbq1o3O2NrASZJxGWk6INMH2Zc9Du83VYhZ6fPYioTGCvJMf/oErN9+3ae0VuQGrl3Yw4KzBnQEXbdkloASA7WSfPoExyc9B9d1YlgM/e76FCzvcslXVGPXXinM/5pb94JJjhgW4F5cXRq/DExYzF6y/b4g6ib7qckPyL9iq4B/LK4ymmbb168FEGmaF2q8A5/spM0gG2uEiVJaHa/VAM1u8T8H7l7/d/gOVQvxzbVgul2xROQr96BrRCpX1HNC+GlokjNj9/2pgvpu1huV5Clx8SSqaIestILGACtA/hjfWiwrFvjRcHt3UVHvYmWNtiIcOYYmnaoNUCFDj/G9Ye8ynaaSmVAuRiPbmmlbkoZkU9YiiQoYgewEXP72dLBuLlBiI4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67fea376-37fa-4459-ce97-08d7171d9e59
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:47:07.8278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004710_934279_9AE67583 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.20.161 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Atish Patra <atish.patra@wdc.com>

Export few symbols used by kvm module. Without this, kvm cannot
be compiled as a module.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kernel/smp.c  | 2 +-
 arch/riscv/kernel/time.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index 5a9834503a2f..402979f575de 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -193,4 +193,4 @@ void smp_send_reschedule(int cpu)
 {
 	send_ipi_message(cpumask_of(cpu), IPI_RESCHEDULE);
 }
-
+EXPORT_SYMBOL_GPL(smp_send_reschedule);
diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 541a2b885814..9dd1f2e64db1 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -9,6 +9,7 @@
 #include <asm/sbi.h>
 
 unsigned long riscv_timebase;
+EXPORT_SYMBOL_GPL(riscv_timebase);
 
 void __init time_init(void)
 {
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
