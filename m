Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395EA1C16
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKiebJcxKPkDzwjK48WZEq0jmN3wuN+RMi5h800Hwsc=; b=ndmnl89qxGTuOZ
	qn2cq8kq9wTgGL0m/mezUFm3wFldx9IesA+Y2oMWf6fIvnWIqqlCcc6QAY4i7AM0p0goocrbubTNJ
	qwGOny09gXAsEsdlCn/wZg3vrTiFbff89AH5+zwsxdm+uoF5SVW9ojiVyKjm8gkjROFtyewqXdqqa
	yBecEspRvo+87vScJ1QWfa82sNFyj7LCd8H0LryxyK2OB+jZyG0rKWV5KAlJ2IoHGCDI4wpKE+tvG
	8ymEcghqKubKqCpIlWsgqBzOI3B8C2v+zitWigMF7Ae8hPwsF5Kprf3ONSmcTU6zYf+6taSFPUhbP
	mtd1VCAf1i5dlkH8LSuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Kte-00023r-41; Thu, 29 Aug 2019 13:55:30 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KtX-000217-5S
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567086923; x=1598622923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p9HJqoz3LbanyMT//HPJGrEo8pSsdeciqqPDTK4TfEw=;
 b=nBK7Z0Sjp1un2zryuPUj+xFaMDUqL9rz+YYwgw7rfKlOueZ5j/ohZak7
 H+LG+yxpJvRnjYj3NwqxFOrSERAnJhnVRVwir6YcUMntqEyW/dHYhEBiJ
 GYrMH9ZJrYIO4AAaq5LCicanEx0zwgeMMgDjYVc+W3jlBMqPWMtADxoi5
 1MFhUzkrJZZXBqRrsa5bWOHdKxFffugr7PkF1kJ8l/qwFRD3gT2FMZoMW
 0vVp2GbmT4zNSP0X0WJpU7Frq1or3sm7/qlHI9QSU7uXYX/48U07YngPz
 xcml0KPAs1gHii8sHMjIZpe8XD9Hqiu1VAjbafG2s34dYwOlcLvARBMsK Q==;
IronPort-SDR: IM89Hb//nIeQHHjiL5qFVdMMm7je0ta8pvoLtJjGhyACTZ7lTzTmh98cCtRenviUhBIO2gqKMp
 XzDeQUCa2pTk+PiFXFvItPmzkPby6PQzsG7seL/adnFW7K7Aw9OeIlkOz62xBaDeP6FI5+XySv
 W/7gPsWN13WsW+y3kycDFPogGaRCbERa5ZGo+4PgATQu+JtaCRUmfXW5BZnHDRH3kBRRw1Obr5
 qRMIX3Pge5JzY0rzJN8aXlslY4sNo+xHaW1oxmVW1qQeJcOEZrLSoZmXv4y5AS6bCKcbtX3cbX
 Puw=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="116951585"
Received: from mail-by2nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.51])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:55:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HxAQHJoHp5rQ7zHqeGwWrYHPHkmX9QLDPSUXAX8lX2NabE1m5BXKp6R3xIEEBoLvH0vChsqMNj2V12QF0YnuthV7kdD4JJuHRaJwJzTgZ9UdFVOCVjy3NXfkjlxA1gy+jQDVYWbX0fk71bb6a/MdIP6MSQaOYsXYuIMbl++4KEAo3qqmczPddvZ8ZU7awWQJP0D1TnBRaIrvdQi91PTjMTb1keeYfB+YWce2LqmmDhaKDz5fI+UapLDxlkZcxuTeq3HqJLc9CozbzTa4r7WQPARbEc8veP53YFKrmiyqIqZnKFx/ZxmaoOH1DhBz0I6nWwo6T1ZnuJGKKWPhMMlzrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dDc/jViVNgdkanOMCtGdfLYq+yZEgQWGotyo/fOBKOo=;
 b=Dh223L0uosat88PMVr77YbVLivWvmx7eXJp3YZ375ev+MtJiZe5kVZ9C3MRjIvgGmVREPznyGfpgKFdbLgHTIZx28fxfzmchJEDjSiS88ygBb4tKp6VPNhy7441F3hzneLPU6EpYHSM3Mt6ZrfbnbuF7492g23OV50BI06V7kzptJQutNFj53eJZDjgADe2RqNKHxXWXy1jxO9OIUbMAUktjFgVq5HbWnWaNcClV3+sjcoq1IdjeotebIp4RJUnRZoMBrJX6rHFkZ6xUdmkQeNipesuaap7W68busUSARKT0efiRtspPCdmL32GCZCBYna2vMwGBn5KoncfMCySSlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dDc/jViVNgdkanOMCtGdfLYq+yZEgQWGotyo/fOBKOo=;
 b=UF/+Kt8W+5Pe4kXgZpqP4LGvnhjZAN98tfF7fTEXDyhyhRPHh/GKyYX8bngHN+XoYncHXo7heynZ8bruXnBPPFyuZ9ggsii5g3tt7hsP+Rn3GxRI4MymNAQEzfyFmFezowqzaFAXbHD+/edjGcWMNbN89oLZrX/UEkdTmngjKwM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5616.namprd04.prod.outlook.com (20.179.22.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:55:19 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:55:19 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 01/21] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
Thread-Topic: [PATCH v6 01/21] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG
 interface
Thread-Index: AQHVXnFlxmD3uFKGaEWHEErG4PUOPg==
Date: Thu, 29 Aug 2019 13:55:19 +0000
Message-ID: <20190829135427.47808-2-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 9456a0b7-bc51-448b-ad35-08d72c888755
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5616; 
x-ms-traffictypediagnostic: MN2PR04MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB561647D235EBC13242E727268DA20@MN2PR04MB5616.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(189003)(199004)(7416002)(52116002)(81166006)(316002)(6506007)(386003)(25786009)(7736002)(81156014)(305945005)(2906002)(36756003)(4744005)(71190400001)(14454004)(99286004)(1076003)(256004)(4326008)(66946007)(76176011)(66446008)(64756008)(66556008)(66476007)(102836004)(6116002)(50226002)(55236004)(476003)(6512007)(3846002)(71200400001)(5660300002)(26005)(186003)(44832011)(86362001)(66066001)(6436002)(446003)(8936002)(6486002)(110136005)(54906003)(2616005)(486006)(53936002)(11346002)(478600001)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5616;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KVprQ3PWFdw+dmbfM7vwy+ukOZoLY2GcUVbECwYe1BX07r4ogG0VcNCwxPSN++4oArXdUEvOZg0KWNIv/bgAsd2Z2kJ7bTEaX1MJLPlEttxB5K+r2xCDxbsIGf+0A0mw68WD16uPbeEcafWinrXHU6Q6HlFKlUShr4Ud3UxQMXN3Su4DlFH7YldWbNkNtgs87Q/E3GcQ4dNvtaFtCMjKRGI3qZ5x8Hhcu4k2RD9hW8Ir7qDcVN2QyVOnZ36iY8FhkIhfAwJfbbRpmmD4Ya65A2YgfAiA7gL5pLSGRLgCGHaPLCsgKdhSt99A01cFyFgP6zeGpxWIcdoQ9GAhKiuw1/Sp8FCc7v5Lu3q2OW7oC581fTgVd+RUJ1EAcTEEZfk+MODwBEyF6E77SpVn0IZEPMloy2DyZgdmK5XeyXUeHKw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9456a0b7-bc51-448b-ad35-08d72c888755
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:55:19.7915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vkheH0Sb7iXbxgjl1O5wEI87GDrNWR/fyjCyDgh92XXN/Wu9YRGJBGAXVT8BUY9kQ3ZEsZbDAEFNgd9LsDCKDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065523_257577_91316FF4 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

We will be using ONE_REG interface accessing VCPU registers from
user-space hence we add KVM_REG_RISCV for RISC-V VCPU registers.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
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
