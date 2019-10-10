Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271CED2777
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 12:48:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znH/NAatmyxM6ONL3lmdwL2jfCHF+Eqo1h4ytUQ/4/w=; b=cd7rmLYU2hIrNy
	/UtceOGJW4SJn+MJZFcO2kKAvlDzZZT8USFx7vr3QUILjEZ/qr2okdPqydHAxduJq9Uo0r2Ms/Qdo
	p/PQQh0Tk2ZGSlnVZ8o1n2DAZFH6L1Ngfe7VELcK9gEi5MSbjeFSjr8HEw9MSYYm3V8Gkkas35Cp0
	Q3uUSVvwpUwuTVoWgVTnDbEmhHZy7CotnpOprHpZ127K4Fla6WbZmQy6ou1iZYRMjTSpBT8AT3rM3
	y7ggee/63bTn+vYcj+RimAaAf3gR1XXoJ5fFv/C+mMb2YN+IITO80lncee2cI1Sp+jmXAS4vS/fh4
	q931TFb1EtsbtovXBH3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIVz4-0007Th-5y; Thu, 10 Oct 2019 10:47:50 +0000
Received: from mail-eopbgr680072.outbound.protection.outlook.com
 ([40.107.68.72] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIVz1-0007TE-8l
 for linux-riscv@lists.infradead.org; Thu, 10 Oct 2019 10:47:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dgo9EPlgyXRUJT71NULD7gORquSoMzkgo/0NSsFH5hAem3/IrB7dL1/vo9p2S21teME7Wwga+MOdSzU00wjwX5EzKtUyNZCuL/b55FPXndDO2ZI4WPKBehKFQk+yqJIiV50795Fzx5TpI5ajhrUJipsMTYFZ4bIPhJn+MpNWt8jHZo0p1G12S8BwoA3J+6U/qwS397zs18QBhvjD5630U3kk9WerDC1xGtBSFnzuJ8TUNB72eISWBQga7wmjMJYmgntlFNRcQXeFDzufXwkgQb1dkweMVckW7Q4WyzXjHNQI+oAyQpMiq+aXRiytU9+w4Rzgk5sIKXYOKUbxYl2vaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3LCIZDd4pB5DzLOKe1B7hoA/wL9h0O2zAQelrTkvyI=;
 b=YLQm5P0JUI834Vz+zA8wpmC7DG0jZzdHJCfOmC8x/EiavcJD9tF9l1b+51+mbA9/43Hzg+XKil59iiN+ef07GC83Lxs5GK/B03fNQTXur5jcfcDFmNGsI9dxbYLxCYQAXG+LFjra4aAdE+ArZm9764wSGuxNieCtpCM67a6Zk5exBG6TEbifZV4pyaD5LzbribERQx2J1gVoM5Xl5YeCGC3LLvznJrErEFPWoTan6nKaLaWCH9r6m9Z4D1vs3JoxRraSuK9Cyxeyw+aa6Uwc+Nyfq/FR8IdSzx5KvpdjTq9kNk+ONVAeqXZAp6ysRQ1y7S42h99jgVfSgctJ+dyVhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=infradead.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3LCIZDd4pB5DzLOKe1B7hoA/wL9h0O2zAQelrTkvyI=;
 b=CqX5mg23oRmPdM7hzMLwsUaiqIb1B1QNCv8ZIhxCor/8S4NVkBS74YM9DehyKWZ9e1W7WCKzU02O+n/8neKBf28XXajxDt/eQR3ifAddzp3COfWnvHI3PA6gx2S8v7MoTU6HuzCzxrr175noyDNs/c4hRAoWlt2cRToffHO+KIY=
Received: from CH2PR02CA0024.namprd02.prod.outlook.com (2603:10b6:610:4e::34)
 by DM6PR02MB5178.namprd02.prod.outlook.com (2603:10b6:5:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.23; Thu, 10 Oct
 2019 10:47:43 +0000
Received: from CY1NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by CH2PR02CA0024.outlook.office365.com
 (2603:10b6:610:4e::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.18 via Frontend
 Transport; Thu, 10 Oct 2019 10:47:43 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; infradead.org; dkim=none (message not signed)
 header.d=none;infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT052.mail.protection.outlook.com (10.152.74.123) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Thu, 10 Oct 2019 10:47:42 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iIVyw-00055q-5a; Thu, 10 Oct 2019 03:47:42 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iIVyr-0001FR-1s; Thu, 10 Oct 2019 03:47:37 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x9AAlZXM019650; 
 Thu, 10 Oct 2019 03:47:35 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iIVyo-0001F5-Vd; Thu, 10 Oct 2019 03:47:35 -0700
Subject: Re: [PATCH] microblaze: Include generic support for MSI irqdomains
To: Christoph Hellwig <hch@infradead.org>,
 Michal Simek <michal.simek@xilinx.com>
References: <aa6dd855474451ff4f2e82691d1f590f3a85ba68.1570530881.git.michal.simek@xilinx.com>
 <20191008154604.GA7903@infradead.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <c558db03-1199-275d-3e42-612c71cbf736@xilinx.com>
Date: Thu, 10 Oct 2019 12:47:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191008154604.GA7903@infradead.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(376002)(39860400002)(346002)(136003)(199004)(189003)(81166006)(81156014)(186003)(230700001)(26005)(2906002)(6666004)(11346002)(9786002)(106002)(356004)(36386004)(70586007)(70206006)(446003)(4326008)(8936002)(336012)(305945005)(7416002)(36756003)(8676002)(426003)(31696002)(58126008)(54906003)(47776003)(44832011)(126002)(110136005)(65956001)(478600001)(31686004)(486006)(4744005)(2616005)(2486003)(6246003)(229853002)(76176011)(476003)(5660300002)(50466002)(316002)(65806001)(23676004)(41533002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5178; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7a219ea7-dda4-42dd-fd98-08d74d6f473c
X-MS-TrafficTypeDiagnostic: DM6PR02MB5178:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR02MB51781417C2FD68E5F4C5B274C6940@DM6PR02MB5178.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 018632C080
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LZYQgjgKB/J7kX3KvApRvEfRiwZ/HKuyXra+fBqRzMFM6V3l9KPpYilfDOlxt6IeVkVf67txiE2Gz9udA/fyh2gaxrhG0Ln/bzKkNvUxxzszXbKIV9IgiQ7nuq/xm0/t01Frl78Dz/HZDnpybk28zmi7xuYZ7/IVwrpiiNupjMW9Wq8chT+mbvxlqmE5IRtNvvJm9jIFjoSc5PQGHEGnt93/nlGzKUcaRKyKYI1Ul36YX3n05S7QffvVFZYb8cZqPpAHcK8fT5zDWK1Psh/uyRMWMQd0Fs1DKkY06WW+CprP4HDi28j6VlyX9p3+aBos91D+xBVKmeQlmM2f56ppJcAc67f0Y3J2YweL9II9Ug/VH0GXqO+8shWP4cziDqvdQ2ccDY1iKTi0NGqBX3Hy2gOPXcZ4Rw5vzwJVGCKPBng=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2019 10:47:42.6691 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a219ea7-dda4-42dd-fd98-08d74d6f473c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_034747_311290_EF16FF95 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Kuldeep Dave <kuldeep.dave@xilinx.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, monstr@monstr.eu,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Firoz Khan <firoz.khan@linaro.org>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 08. 10. 19 17:46, Christoph Hellwig wrote:
> On Tue, Oct 08, 2019 at 12:34:47PM +0200, Michal Simek wrote:
>> index e5c9170a07fc..83417105c00a 100644
>> --- a/arch/microblaze/include/asm/Kbuild
>> +++ b/arch/microblaze/include/asm/Kbuild
>> @@ -25,6 +25,7 @@ generic-y += local64.h
>>  generic-y += mcs_spinlock.h
>>  generic-y += mm-arch-hooks.h
>>  generic-y += mmiowb.h
>> +generic-y += msi.h
> 
> Please just mark it as mandatory-y in the asm-generic makefile
> instead of requiring a sniplet for every architecture.
> 

But is it really mandatory for all architectures?

Thanks,
Michal

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
