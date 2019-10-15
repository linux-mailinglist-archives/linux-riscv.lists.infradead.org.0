Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2DED7162
	for <lists+linux-riscv@lfdr.de>; Tue, 15 Oct 2019 10:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yp4z7gE7PLaRWA0wOo00dq8wVZHbnDtb9IOM7aDT9ck=; b=iamXZWj1d2+Ek9
	yJ5IzdxA8ZGR4blbpR8KfMgqr2hKBlMfRK/5/bAsITeIyJ6J8SMwaS+r+iwP2b1uEcdaiPR8ZNwcv
	cWhLDG3QOysT5k7cR7ynGb7Ol9j9QNRl3AE4zOPS2taKuh8XGrush2pbFLlIptsHqcKFFnjPpnMDa
	eNtpZLkmUaY9Q/OPptKj35jrlv1zeDkTyAB+XZTkztB9+uRhI+sj+6Qw9cHEonSxLWvghAKxXW9Gl
	nfOceiDkOZiBsnmg96dlooho+sx1WKYzRkeZgwnaF2Si1to/KYh/g9wXhgCNFeV4w4cZnXjOkzB/5
	8fR/ScY/grGLUdZ8ec1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIU0-0003DI-RE; Tue, 15 Oct 2019 08:47:08 +0000
Received: from mail-eopbgr780050.outbound.protection.outlook.com
 ([40.107.78.50] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKITx-0003Cd-7t
 for linux-riscv@lists.infradead.org; Tue, 15 Oct 2019 08:47:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IM/kU3VAwlPZRVTCMque8g9xqXXMaZKnG1RionkmAq8LyI3K1LqeEpk+w8dg7XNRfhZ6Mhe+DvKDsoi+V4O+rx1OS5Pa0CqXAd0bnef2PxfbBMrRYidV01aGAYOAdACg79Ll7zDbDDVD/8t8ZvbbmtyvF8B/kFJi/IWfHbeiSxn4J/wmSaJy0/1McUNJCw1CWTjOII4TZYQ3z5T9dvmvEBe/RZT6UWS3XnYFUWsKqw45YS2h2XisH26Gy7IllIrNLmQkN+Trb0vgLy6NNVUJSdDvrlbiVIrSOjwXi5aWemjnvSamZlWMFgfLqYCK/EK7ka+nXKf+tvhxoDeAQ7+j1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NcLxa/n8yPMLHN09YrYmdFwSUuCRwXxvWWgs5hv9K9g=;
 b=mCj2h26UHIa5jCZskg+U6u8M/pbtteEVpn/oPy63QxZ8HE4J/+yDjeVHYpykenINXmIkq4V7I1hioXdZfbnPxChcn7FT9hoNK/l8hNyfmymib0vSiNMLT/0QqQA8ORJsMj2NM6gFqmvPfbzmAG5glisoqGj7GCPBybj+j3RBx8sX91l3Wc14HpT9ZkvYXXJnXkyp6GI/o0UiE7rzGAwe9vKj4qiLbQ5aT4EHxg+tDgT19yP4wabOqcHRfpYCwNctoXdBmDDpjXgb0pwGOi7o5ycdgE2wJEf75KstShMrZ8AtHRZT4UGPXCfZPshcxiiwr6sfePOyW1v7i8rFWpy54Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=infradead.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NcLxa/n8yPMLHN09YrYmdFwSUuCRwXxvWWgs5hv9K9g=;
 b=gc9Q/1dbBAQ7dNvw2u2+XYRUSqGfNgrgWAoMQNIsYxFT6hmqKqoS2BExB3Gak3bceSsiHYmTfd9pXaNorcr3SobO7rkQ1am9ptGb3bwRh0AfHkhs2HzL6Sn1X4FhnzZQ9UvIAirYe3SGp2DT73B9/T+JNmUFy4Bs/J6viln9oOk=
Received: from BN6PR02CA0046.namprd02.prod.outlook.com (2603:10b6:404:5f::32)
 by BYAPR02MB5205.namprd02.prod.outlook.com (2603:10b6:a03:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Tue, 15 Oct
 2019 08:47:00 +0000
Received: from BL2NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by BN6PR02CA0046.outlook.office365.com
 (2603:10b6:404:5f::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2347.16 via Frontend
 Transport; Tue, 15 Oct 2019 08:47:00 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; infradead.org; dkim=none (message not signed)
 header.d=none;infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT047.mail.protection.outlook.com (10.152.77.9) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2347.16
 via Frontend Transport; Tue, 15 Oct 2019 08:47:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iKITr-0003FD-Fs; Tue, 15 Oct 2019 01:46:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1iKITm-0005GJ-Cq; Tue, 15 Oct 2019 01:46:54 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x9F8knUa027849; 
 Tue, 15 Oct 2019 01:46:50 -0700
Received: from [172.30.17.123] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1iKITh-0005Fa-Mv; Tue, 15 Oct 2019 01:46:49 -0700
Subject: Re: [PATCH] microblaze: Include generic support for MSI irqdomains
To: Christoph Hellwig <hch@infradead.org>,
 Michal Simek <michal.simek@xilinx.com>, Bjorn Helgaas <bhelgaas@google.com>
References: <aa6dd855474451ff4f2e82691d1f590f3a85ba68.1570530881.git.michal.simek@xilinx.com>
 <20191008154604.GA7903@infradead.org>
 <c558db03-1199-275d-3e42-612c71cbf736@xilinx.com>
 <20191015074717.GB8715@infradead.org>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <7cedfc62-b9ba-d1f2-e14f-93a64ad07fbc@xilinx.com>
Date: Tue, 15 Oct 2019 10:46:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015074717.GB8715@infradead.org>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(396003)(376002)(189003)(199004)(36756003)(31696002)(478600001)(305945005)(316002)(230700001)(106002)(9786002)(36386004)(58126008)(110136005)(54906003)(50466002)(2906002)(229853002)(8936002)(65956001)(31686004)(81166006)(76176011)(23676004)(186003)(47776003)(65806001)(2486003)(81156014)(8676002)(2616005)(476003)(486006)(356004)(44832011)(126002)(5660300002)(446003)(7416002)(426003)(336012)(11346002)(26005)(6246003)(4326008)(70586007)(70206006)(6666004)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5205; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e10634e9-b643-4753-150c-08d7514c3e70
X-MS-TrafficTypeDiagnostic: BYAPR02MB5205:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR02MB5205B209915A333E8057E012C6930@BYAPR02MB5205.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 01917B1794
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CnCylBB9yDFqJQI5rjHdz+z6RHCaVVRL28mxlRltDT23kjZ36i26sWuJ156pzfCFPrCcOyM5AF9UJsIYKzzWUMciyGr1Lg6aHvP6yKNON8tjU+ckQlKnjJIo+4oRZEKVPnmmpLs/5AJ5nEKD5JJlHa0GyvnuzwvEoGfLer8xSNwSuhdBDGGln6+tudFb2sntKEfljy0RyV+jjHcRU7TiPA92Ljrgr/VOwZ8gr3N94HsBAQb7biVkP/G8BaJPZFFJ6NzT9D0zl3JX27oNosFKzwcoaiFOXNpvU72/VTAjfnPdiSHnAqj61niZ7CIumkjolvzhYss3w2f5IJyRNzI5bJQytZa7Jr7LEmVd74gFSX4nDaVD3Lm1re0YhLpRcqZ/6T2yDdhnpQpypZ+BbDC3tbZwGQhvH0Nu/UBXTU3TKj4=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2019 08:47:00.1380 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e10634e9-b643-4753-150c-08d7514c3e70
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5205
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_014705_287391_C984321B 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Kuldeep Dave <kuldeep.dave@xilinx.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-kbuild@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On 15. 10. 19 9:47, Christoph Hellwig wrote:
> On Thu, Oct 10, 2019 at 12:47:31PM +0200, Michal Simek wrote:
>> On 08. 10. 19 17:46, Christoph Hellwig wrote:
>>> On Tue, Oct 08, 2019 at 12:34:47PM +0200, Michal Simek wrote:
>>>> index e5c9170a07fc..83417105c00a 100644
>>>> --- a/arch/microblaze/include/asm/Kbuild
>>>> +++ b/arch/microblaze/include/asm/Kbuild
>>>> @@ -25,6 +25,7 @@ generic-y += local64.h
>>>>  generic-y += mcs_spinlock.h
>>>>  generic-y += mm-arch-hooks.h
>>>>  generic-y += mmiowb.h
>>>> +generic-y += msi.h
>>>
>>> Please just mark it as mandatory-y in the asm-generic makefile
>>> instead of requiring a sniplet for every architecture.
>>>
>>
>> But is it really mandatory for all architectures?
> 
> What the mandatory-y keyword means is that every architecture that
> doesn't provide its own header gets the default one, which seems
> applicable here.  Maybe the keyword is a bit misnamed and should be
> default-y or something like that..
> 
> But in this case I think we have a clear case of x86 vs the rest, which
> is unlikely to change in a major way.
> 

Bjorn: If you are ok with this I will make the patch.

Thanks,
Michal

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
