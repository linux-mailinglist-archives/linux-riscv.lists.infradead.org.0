Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21FC98DFE
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 10:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7qy/xfh7QT6B0DpfVnOe+l8o/sCPDf3k10bfX4NTNo=; b=uP3jQM5FoONOUh
	ueyv9+Iq1c3oOuVKOAH7kViGIFSahA9M4YhZhq2Dl/fe6X87Aa/kZeOh4gnqGwwa5qijTB+4/5z2s
	3n2hQjv3ma882hEDS2kGGz0Pa/lDMCR+Ft1osZIs8n9mldK2pLOCu/lyGrz1DEJgXafNl3krzJKU1
	rbuY7UIiIocc9Z5ILhB4e7IB5QEELJ1+rCGmRnSrzkmTe2lnPKfBLC1i7FHZ5GfnWwEBo3PhOt6NA
	1/ZrixWz4Ub2fTbBNIxRr0TVIICZqfpN+9iKWEPL2HuPe61vU+BI8DY4Gd7Vxag7LU0xSm2s48FGZ
	/QHRyq52gOXyaoPGYFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ig0-0005ra-Ix; Thu, 22 Aug 2019 08:42:36 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ifw-0005r1-BC
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 08:42:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566463352; x=1597999352;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9wly2ZqB8szYB10REO9hVQXoBMbrUmZ3YdQFqShIxWQ=;
 b=U5fVGGDLpKpv135GFUPnpmXaCHfDVuc9IXN0//GQe6vN/Sgi3V/3rVZu
 boW+hdL8sSmjKMZlJyffo+jHim4ibF/OuPSWo2qq3vZYZDSADjr907gBP
 5ThdPsgHpZ1KmkCRBOXVe0PTN5t5PP4bIDOHLtaFkyqE8CMV5VUfSwGDi
 lWcpmziVq+B/RXBd2SXyk2x4a/ovwcuAcDit00Ed4arKlIu6rGNs5mY2o
 WjujCfttOcsV0ih7r5C35L59K5xA+R7Y+otLJoKbsJL3UjlIUqKSXVrYM
 Ydtjrfqkgnn1cVCOzrRYWKumzxkTT6w9EQgWtO8xGs8rzZUNcdxou0Kd8 w==;
IronPort-SDR: QSr15ROykkQ6HgOv0PrQcuu2UlP7FbfvHDbrg+IefkS/UNwXoIqBNejL1GHo8+hYg4xhzAzPbN
 PTG22Xc/oGMKs43ZEwdm4UbIYoXD3Dc0wfkIhgMEEmARKRxF/h/2WpWw/nqH7TSKPD3c91g3WT
 DK4urRC48Q74KK1FUT1mc8kxtYdvdDKXbp1qDCyfv3yccGjOyaURiGfSH/T6okTuc1MPOIF5ck
 UfAvQnbSNyc9EGLkNytMX06Dsl3w/KFGosfCKkjg4fskT1VwkKTJrK3hPlFvKwEgsCBC+LforF
 v0M=
X-IronPort-AV: E=Sophos;i="5.64,416,1559491200"; d="scan'208";a="116400162"
Received: from mail-bl2nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.56])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 16:42:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fkkr+zDN+l3TO8WQRvrU8f4GIjaI/t3g3REEt5fZhEXE4zV5jr3GOG780+vX+oqZm3aCZlFcqJzCGhUuorfsXvf0oRNaR7aFvUafWdc+loU4vC8Seld4/NuL1CbNhCQQkqvEqVTZFl5h38v5AiwkoP/LmuszyMu1d05YvDFtv76qYEsWugrjjKbFEQuHvUdO9R4ZyEWfgNPfsnqx3pYfU9WlY7FjsOHz5iZrUy5+x4pojmUAm8b6rk5BuwhuyK4jaOLLP9MJ1PfTVZGWZecpORkvRKDbHHHH3M7+JofYm4jh/5blTVB9om7oTBl8usv9QCwPab+3tPdu7Y/irPNxRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3QIaUtavuVeCoWdfgfjqxFFAzYWV6HZkJPA+thztH6o=;
 b=nHAWFj4g+8c0BnqAZqXb9HFvGGyBvOWb/ypJ9g0RC3OlXLMdqyS04NU1dcQeN/QcsO+7gdaI+erPRDwOnz8vuHz2JwCR2U1Uh9tY5Dm0Tn8LAYVE/WPvgNdaOBHU1AIQEx8aH1crvZ46Nmrj0fba6qrcRLW/anoImAu3GhIWyD76Q7WnU1lKzPJBBn8liNlp+WLoEZ8+FWMeJNQv+/QJDSI9D5+skV1XLDjbm1HKL8+dUAkSYsyANytXkOkIKuRheIJYoCvIEyMk5qr5xGqqraAtX+jrio5dS7rm4yzUdyvGJNxWFylYU16fKajQxhRjzzVRbdgEJOvGznufGX74cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3QIaUtavuVeCoWdfgfjqxFFAzYWV6HZkJPA+thztH6o=;
 b=A9BuANOlt+joTQ/TFtcKCifD42xnA2H46Tts8GleoGjPUIqkav/6TAXn56bIr/MMyBterIsCV/krp8O6Xe6SZdeIGB8eOS/aGVwx6FpJa93riwhi7fTRuCKpPzxpMCNoleDqLXtQCG5RmQjcT1IU05v9JNdxSgBvL359BpevhO0=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7070.namprd04.prod.outlook.com (10.186.146.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 08:42:30 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 08:42:30 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v5 01/20] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
Thread-Topic: [PATCH v5 01/20] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG
 interface
Thread-Index: AQHVWMWIsBQjRK+t0E6B2vDaDS4FuA==
Date: Thu, 22 Aug 2019 08:42:30 +0000
Message-ID: <20190822084131.114764-2-anup.patel@wdc.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
In-Reply-To: <20190822084131.114764-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e25e022e-3c3a-4f01-b5d2-08d726dcaaad
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB7070; 
x-ms-traffictypediagnostic: MN2PR04MB7070:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB7070777C5DECBD768FDB171F8DA50@MN2PR04MB7070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(189003)(199004)(86362001)(25786009)(110136005)(486006)(316002)(52116002)(446003)(54906003)(76176011)(476003)(11346002)(36756003)(14454004)(8676002)(44832011)(6506007)(81166006)(256004)(386003)(2906002)(99286004)(2616005)(66446008)(81156014)(66556008)(64756008)(66476007)(3846002)(6512007)(4326008)(1076003)(305945005)(7736002)(50226002)(66946007)(53936002)(4744005)(186003)(26005)(478600001)(6436002)(102836004)(6486002)(5660300002)(71200400001)(6116002)(8936002)(66066001)(71190400001)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7070;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TY/4wPSjoTlsNHAe/1lsCNKPKBLj9wNKUOYH5V8oN8//tWCcX5dBceE/L/ipi0lxLKpJ2nKHyygOavb/Jipab4rDD59iDcMH0vBT8RWw5xvDPZ4XhGyiSgtpBLSkUKNW5/D0fkvTZid5UDl6MOPmImDPfXtDaTdt1xz8YLPtrntqaLiWlGYWnrdGfiyr2Zc6pQ9824V0XMW5FwZ+TvUVCscyrx55Tpc3aXeYojDlRevJpqYHacqko/rjYBedaHIkOdGzuca4aAKNer8HK7XCNWElUkoeAJ/2wIPYsJgQ12Rt9OErDFd2NAhDmQhmF2rW+uHSTCb16HRj5ng5vvuLHBrNDI3YorUpnvXMtapKeq5D+uh3WCYi8FZvLdvF4OFC1QNwmyv7l64aGe2zVEAS3mO+U63NhG3yLhEVAF06+Lc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e25e022e-3c3a-4f01-b5d2-08d726dcaaad
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:42:30.2291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uNs1z9u3vpBLupsabeSgZPXV8zwlg8kPLSzOiAt9kjcQfdhd+DS62ebiodZz5zBI+Hz+ck0dB5a9H+oeYNTX4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014232_419230_43A7F6B2 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

We will be using ONE_REG interface accessing VCPU registers from
user-space hence we add KVM_REG_RISCV for RISC-V VCPU registers.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 include/uapi/linux/kvm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 5e3f12d5359e..fcaea3c2fc7e 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -1142,6 +1142,7 @@ struct kvm_dirty_tlb {
 #define KVM_REG_S390		0x5000000000000000ULL
 #define KVM_REG_ARM64		0x6000000000000000ULL
 #define KVM_REG_MIPS		0x7000000000000000ULL
+#define KVM_REG_RISCV		0x8000000000000000ULL
 
 #define KVM_REG_SIZE_SHIFT	52
 #define KVM_REG_SIZE_MASK	0x00f0000000000000ULL
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
