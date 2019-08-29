Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E255A1C37
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 16:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1g4EB3x+WTOjNGfjjTmenOkS6k/44heldm+WNaRxwC0=; b=A6jsjohXgJGRcV
	swfm+ae77Gqqp2fDaD9mybXBPyMnqTKomySaDX3iqmnxo5y9l5xXikcozrXewKA3F7vuVSt0K9Yut
	2L9X8YlkhCp6Acubdw9KUs+1yNbiUAd3ePN4xKsyVHm5BDEL/uRMJ4Oe8tjAZHHiub0efhi5AX5WS
	n/hCJ+WaqIIH1MOxbucIKXgjUGw4EUGCos4NRUiyE3FBHC788wr6hsZ8rHkjNE5HatGMNn7VV8kze
	9D/61az1N/A73e+Xdkl+yNGuyNpMJqYlWNptWcBjSJb6NFVlJT/8xUyEdFpAn/PhPTIDpvyTIGnRb
	wh2SEuRsN1jbjxLqgObw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Kvp-0003eZ-Vc; Thu, 29 Aug 2019 13:57:45 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Kvg-0003aQ-6g
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567087056; x=1598623056;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e4M+SL+oU8yFhAm+/wSZ/np1nCdxQBgxjIv1+l2kF0s=;
 b=LKc8XdB2LvE9VJywz/gTq4TBvFVeFhPTmy2t5YxA7qsdx80VXc77RCEp
 Tii+LkBbcfd5lk+kEYGNx1/L5z67tjIC2k1rFCBtd8R2/mZMh9RCJV8xv
 7qZJgoZJ81G/UtNQ1sZFOWTaaXpAFLgDxQ7oUi96apNY/7imkJSbWTJvF
 fZDS8sDHerTHRpmy5tzf3P/SrYZJjtEZr/PQd5DmiMPBpsL052YFad75d
 dbxjrZdDvsRn+5f7E8QzWb84EZ5oUXSbm/PvM0B2Q6yIRQ8OLw0yr8Lav
 lSwSa8KKp6ELHQpmh5BDN5teWh2RQYrJXpZc+0Da7liR0uniCz+jCjW8W A==;
IronPort-SDR: mOVstTnPjFvAdqGcn1FvS7kZi/lUWEbd7KvK9IBdlLGd+8S29ExP6R/b9istnmjc6KTfpVBjpH
 1PsU1Dw2GJP2Y8hoL1krzyF73ljzMXbocDDwMvD1v6UUAOfXYeetzIZeiA5MLA/gu0YBNWRk+F
 q5pF2XylCf6vl+IOh4/LX5GTePSVs/ULIeUuO1J+9kz0kwrxyz+Wo7+Lk6Sq8QM1rz5Cxovrwn
 LX7BSOiETej5eO740VtwGTNWuZdNicw4hd9EQnLl25nDn5w/Odp+RnjtzB4cRH7yGE4Iwu8pdU
 hfc=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="223616026"
Received: from mail-co1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.54])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:57:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EoBPx2Fgm2/MphyxM1nL1OJygz+s2MWI1kkQKdh3N/E++/ZJ5F5/xC7cGB7CXV0xcq6ye6kFPATec5oei4M38u50jrD8iUFixkfMGDRNTLZlQO5F0Ob0nSwYtWtYRo80cfh57VSOtnpItup5MmsediawtsHDV2xmE5XQ3clYYNruk9wCayrAylqIP6bv+pIij70rfkMReVJen/RY2jkGu70x/9jzV9dDielJC3j3m/K3XreuPh47xdPtB6r7BSffrThOpkOmGXxwYFdpxbysGvHH6OhVu4iIWybhApocmTLW+tL/yXjt3ZLYJbA7DK/PaBB9EiCEN+eetAXTU+FsRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXwGU8uyy0dZxkEwhToY5DeNT/buBxRMpjokd2nYIy4=;
 b=aFpzuUir0iFUS2R+jXUNms53VmWADlphLlpbZPOc1Zf9xlmOi3eilpzM0HQSxdwkz2Rq/0/iAyLB+POnl+D/dXaldEYY/DbtG49DDDW4GShBk4izByZuGYwHaFDLMf1Z2Y1C5QKC4PzikceMs62E7KNnO7n6F3Fal50vTe/sFvnuGjZtfhA2dCUbgNExTqWAA1yS0fl0d96ResXwhF2ReJ1lbjXiZPgJICuUhSGdZaaxK4XpbXJ5OAjq3Dnh29bwXfrCBTytt86IJXoGzCj8F7wlVYYTUgVZ73dNL82nGOc3IPPjatgjFBE/45XF8UjSvQko34VTcys47uKUBhkFyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXwGU8uyy0dZxkEwhToY5DeNT/buBxRMpjokd2nYIy4=;
 b=H//lckTqVlMSQEKy/b5MHDGdk8/N4CE112A+TRg47Ybv8AbN+YFy0zqqrYxZtSRA6kYPhSv9+7eJ856wz34Ss1jt2ozo/UDvw/9VXREyGl1KQaISyw9w98Zakbvjeu2lnwA5bIMPgUAHyyy2XoRW/RrHrk41yNs2ZoufeHMKXSk=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6255.namprd04.prod.outlook.com (20.178.245.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:57:32 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:57:32 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 21/21] RISC-V: KVM: Add MAINTAINERS entry
Thread-Topic: [PATCH v6 21/21] RISC-V: KVM: Add MAINTAINERS entry
Thread-Index: AQHVXnG0+RGmJlrT8EGqnnEM4OKw0w==
Date: Thu, 29 Aug 2019 13:57:32 +0000
Message-ID: <20190829135427.47808-22-anup.patel@wdc.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.51.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9dec2d5d-8f1d-433a-aec4-08d72c88d66f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6255; 
x-ms-traffictypediagnostic: MN2PR04MB6255:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB62553627FB44D683E2DFEB3B8DA20@MN2PR04MB6255.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(346002)(376002)(136003)(199004)(189003)(446003)(55236004)(11346002)(76176011)(386003)(4744005)(2616005)(53936002)(36756003)(25786009)(5660300002)(4326008)(6436002)(316002)(6486002)(99286004)(6506007)(71190400001)(256004)(14444005)(6512007)(486006)(52116002)(2906002)(476003)(1076003)(102836004)(478600001)(81166006)(81156014)(110136005)(8676002)(54906003)(26005)(66446008)(64756008)(66556008)(66476007)(86362001)(7416002)(6116002)(50226002)(7736002)(14454004)(3846002)(66066001)(8936002)(44832011)(71200400001)(66946007)(186003)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6255;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: d8mXcn6pK2MgVT4izcAcvyIsHWOoBJrb4vY/SMGVhkv8dgnURi0zwRknu72EwT0uyNGJDDL6dEeWvbrOlHdba/3QIZ0m5a5tch1T9t/QyH3BK1gRy/wj+Q94Au74RQ4JcrB+0zI3L7sqH+b3hnz8qm9OpbDeya/8GbgKm5ONGjSMbCDDYI2xnX3fEi5UdeqY5b6QP2AhJmuQfwoQBCzYQOFO1De52Gif+7CP4Ia+m44/+mD3p5XMo4AHIi4ryIwe9jewwg2/GcVORYjSPKQN1aIcQbGAGhYUT/Ov9aPcy5Srho5+5FezOVPeSIbm6uhsOUwWcdF/cVFV3mcjWc8KmHTf6Sq5gOq3mcbex8KYSzOIYk5zSEgbNcCR7h970lfSVzz9haJjAGt8BBbt2CGCtm0VZjzrChCstZxelNa1sK8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dec2d5d-8f1d-433a-aec4-08d72c88d66f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:57:32.5130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F21pEVeZocvluRzk2w9MO1QDWR6Iq+9fjlyGd7/WsYPdK2Gk9EfEPe38QjOVnZ7BUC2Qk8JMxlL/fED8bRVQlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065736_440287_D16FF7BA 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add myself as maintainer for KVM RISC-V as Atish as designated reviewer.

For time being, we use my GitHub repo as KVM RISC-V gitrepo. We will
update this once we have common KVM RISC-V gitrepo under kernel.org.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9cbcf167bdd0..b4952516fc32 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8869,6 +8869,16 @@ F:	arch/powerpc/include/asm/kvm*
 F:	arch/powerpc/kvm/
 F:	arch/powerpc/kernel/kvm*
 
+KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
+M:	Anup Patel <anup.patel@wdc.com>
+R:	Atish Patra <atish.patra@wdc.com>
+L:	kvm@vger.kernel.org
+T:	git git://github.com/avpatel/linux.git
+S:	Maintained
+F:	arch/riscv/include/uapi/asm/kvm*
+F:	arch/riscv/include/asm/kvm*
+F:	arch/riscv/kvm/
+
 KERNEL VIRTUAL MACHINE for s390 (KVM/s390)
 M:	Christian Borntraeger <borntraeger@de.ibm.com>
 M:	Janosch Frank <frankja@linux.ibm.com>
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
