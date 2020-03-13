Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C53E18420A
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 09:00:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4pELhePTPn8l4qp+9EmcVacRzVNBCNI68CwWUhxT8gs=; b=E6MSTbQ3vD3sFEo6rylPQgadb
	6xWYG/tzpeGcmjhXNRLNgljBxpmivklRiypuRDH2BsHfvK/ufpug8H+ojqkuU1V3puMlu2aooxuyR
	Ej6qCo4BwRj/Jp4eL/uiEG2yphndUa0/ENZT4ZB50VAMqU1Sk0V+7qcRxoVVFut8s4luXnwWpQHDf
	BAroaxie/3njajoPXgsVGtwPjfrXCy4SWb8zspIx9Tjr7fR9mig5oB9rfiE4qeDawdNxKRH3Dzoeu
	nGethJqMAX7KVb9pVdkIwAARReuXDikFYkFFsuzPREg/HLXBLICLgDveeshtBI/WbK5Ht0O/2UiMs
	oehmlDCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfEd-0004An-Hu; Fri, 13 Mar 2020 07:59:59 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfEY-00041q-L8; Fri, 13 Mar 2020 07:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584086394; x=1615622394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=nd/MRjJ/QhaEEZUEZuJJ9RcShOWWT/zGc5tXcTNkZRI=;
 b=j8t7tFGf6auVA98j03+tFQxnMZdqsj4h7I6utLDn86GorJNtV1D4CJhe
 TMGHG3ambcnPOweOl6O2qhiO3oD12/Of3ayFOC45s1ymxeq7wKWLJU0X5
 Ndo783bc2Ie9GSH2fy6GNybXWYw9fnxWlX1EetMO1a1hm1r7k0/4FzQgp
 g0rdRn0Fmc/ucHQ7KH80GKCp4bvtVQm7/ciYlfJeDEltA4YMgvg+iut35
 UahUJAWykUjigbFDIBUWQMubcUurTtgs2wJUJWZHaOWb5HXhjNmf+qs7L
 6VvqIfYZ89OfRUJvp0pLUJx1MDjdoCb/83nEY9yJJuM57LVXvMAg8kAB3 Q==;
IronPort-SDR: +mkfJxqPlDhGF/trQBjO7SizaBsFNGdmiJTUYJ76+l9YupWlX6K6+nunciiaNlVmZy5IPSxZ4g
 osyMefVsY3V8/OvU6Lzma9FHnnMzQVwB8zMWQyR0GqNRHuroS/lwhHU/pIDS4AMhSBg59envMf
 PebZI/ZmP1ium6C+2MrM/n1XEfX1kkJUxdAknf9uJFMsdzXtcQoPElZ4tzPSUWMLYiICusrlmV
 KRXqM8e6HNcZZ7o+Xl0P2K0NhaWHlC5iekBGmM/6wUFJONNaeiIRjoj540WV3QVn/izgKeIT4n
 I9I=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="132374966"
Received: from mail-cys01nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.55])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 15:59:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=arsmVq4yrE8g3a8xnHPVRgko4pSQu40CpJWtKQpouy424B2p7rW2oM5Jef6l/JSX2ZthLQaCcxI/+JEC8N+WmhnpZausIV1tJRmSMNi0R/PgrBNYGFfUuS9bBQBVXN30sszAwYxFILHia5Xl1U23VKt+A4fkwUWsrKba97P9etesHZQm9uqEkpzkXH1IbF351vDj9cLzZob1TReC4Ahg9ZGoWKfkbI3uon1G3ZYieEzlkuOnf0hiIU/AWy6cY82z1ahwFojv1cHfmYajIvpYHxd++xg7TILdtiwd9i9maeVw67ws5c/j0JA9Nr8mpngLEJcYmmq73czA/0wQL/k1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4pELhePTPn8l4qp+9EmcVacRzVNBCNI68CwWUhxT8gs=;
 b=aWmeBYQIkqDF3K6p/10yV7/cYUDw/gmDtwy6t9rjKmq+NUhv2RGbEXs7PHWWo0Xn/G331MBTmGyna70vYk9hLOkOfcUFViUpEJ2dwimor1SSk5d41aStJ7OyDYmKBJ0hPvYSIJy4TBF7Q27Gl8swhmMjj/wYGy9ahiwqrF0P4ErkM860Fl6V9VjCIz9dcN4tkmO4SWKuHrNPsWOm8v48oVStmopqvSZ2i5hO1iu+XVc9QMpQryptxi2OY198D3l4SYIrWLZLRIwWYGgLq8CkKV8jb8ttOEXpi2kTJS5rO5p/vF7uBVUgi6Ttl6jgA5C4CTy5JupwNsvFZO5Vu7K6DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4pELhePTPn8l4qp+9EmcVacRzVNBCNI68CwWUhxT8gs=;
 b=SA5hU7i5/tkbW5ImB8E/0TPBqWVvv7xVyryO3ACx8unxQxv2rypZt8YjNVVdZ/LQx1pXqDwvlr2r+8pimUs1paBo/8tc9BZnThY39DFVgdQiaQAjidk1qrufMmWoxIXNZV1BLt+ApyIPLlOZY+aeI7GyHK63Nj0XJ2hIgvs2xAo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6944.namprd04.prod.outlook.com (2603:10b6:208:1ed::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Fri, 13 Mar
 2020 07:59:49 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2814.018; Fri, 13 Mar 2020
 07:59:49 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>,
 Radim K <rkrcmar@redhat.com>
Subject: [PATCH v11 20/20] RISC-V: KVM: Add MAINTAINERS entry
Date: Fri, 13 Mar 2020 13:21:31 +0530
Message-Id: <20200313075131.69837-21-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313075131.69837-1-anup.patel@wdc.com>
References: <20200313075131.69837-1-anup.patel@wdc.com>
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:20::19) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (1.39.129.91) by
 MA1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:20::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14 via Frontend
 Transport; Fri, 13 Mar 2020 07:59:42 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [1.39.129.91]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ba8a6394-46e9-448b-7bd5-08d7c72480c1
X-MS-TrafficTypeDiagnostic: MN2PR04MB6944:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB6944B57EFDAF8D633551ABA48DFA0@MN2PR04MB6944.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(26005)(4326008)(44832011)(55016002)(1076003)(8936002)(478600001)(86362001)(36756003)(66556008)(16526019)(66946007)(956004)(66476007)(186003)(2616005)(316002)(7416002)(6666004)(1006002)(110136005)(8886007)(8676002)(2906002)(81166006)(81156014)(5660300002)(54906003)(52116002)(7696005)(36456003)(42976004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6944;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QuE3js6y19XO5GgEEQYiJha7VIk+yM9UujbuMicW5u/WrDSMu1njtmR9JEtke9d6bAeFyvHyWAnt37Hgti6db64vukRJy058fGwwjgfUK45zzLMS/z077KaPkEqxnKVubHxXBZLdoQwHhIbeSK06gepaodZ7TM/eqrDaZXPl5q+/BR7Gg0BDbaQOix4BJsGvIKB/CD/dPY3ZgFcmQh7ldjvs4gtIQJfXDspHh5a4lxt+SzkqzMYekwRwn460HD28z+59w2w0M0jDW5PuvTfbskNwBzl5nqSXS8WtihQn85BECl/iUWwv4QlgBaqUDhKjT/Whb35VopCbUJQ1LTIcksZdQ2MS+2/iEhMpVdYEsGbzRmjeNbz5BP5SOi5pc/JcR4DNg+CMxUIKD/1ybin5Q1T37Yxw0qwOJfhlqaMeGSksJFuiCZ7YvPvCPwk6IkqEjGZJqMVGQ1p4WvL4gsdqlRPo8J7moNHRzP04ew2P/Yrte/i5MuTxW45zTd4h8Rx3f0GUOI5sBUsX2KjMxeckww==
X-MS-Exchange-AntiSpam-MessageData: tzHKRZzPrLKsjGG9ONGOcrQ1B/Iw65qEsjG9+D5Gi5lNE9UE4jO+Ra57ZaCu1yMU6e/Fk6bs1tqBfmmLMFSC+WSDUzE3B7hUWdzO6UnxTsnISt4zJKG7CLb1YiiBmmzjDvkdQbdF87pOYUZPTD1kAQ==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba8a6394-46e9-448b-7bd5-08d7c72480c1
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 07:59:49.3885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BBTx2I0igOPkwwxm6XKz4xOm9nwFZ0PWnOKN5R9VGK3jL+FrtTxwSY6JsQN2bi3IIAjXomGkYHFzksu/SArw0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005954_726239_BDFBDB07 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, kvm@vger.kernel.org,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, kvm-riscv@lists.infradead.org,
 Alexander Graf <graf@amazon.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add myself as maintainer for KVM RISC-V and Atish as designated reviewer.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a6fbdf354d34..c149b5d0f5fe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9201,6 +9201,17 @@ F:	arch/powerpc/include/asm/kvm*
 F:	arch/powerpc/kvm/
 F:	arch/powerpc/kernel/kvm*
 
+KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
+M:	Anup Patel <anup.patel@wdc.com>
+R:	Atish Patra <atish.patra@wdc.com>
+L:	kvm@vger.kernel.org
+L:	kvm-riscv@lists.infradead.org
+T:	git git://github.com/kvm-riscv/linux.git
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


