Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ACB8E092
	for <lists+linux-riscv@lfdr.de>; Thu, 15 Aug 2019 00:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcuLoYZ3CXKVL2B32vOvd+NcRseUROPn3WgIqh568JU=; b=EKjbVhJP2Nsx+x
	eTO9sT/SkmzO1x80/14/MOmuv4UISGeHsHQ1o4reTz4Oi15sWofaKFFRWpb1kDgtiB20uBSSIZsl1
	HGv3EPZJ1Y4qoX0T3in3O3GCS7Zc0MarBoSEHbuBoEB1z9FBSgXIK5RIhWvLWpNjVaUnGK8UrblZ4
	m9cbYJIkVafY/cM3bCtU8B0ls7PYsDJxS4CKYqci2bCHqZKgt6PpwSqiDP3al8quddKudj/ybONgL
	+w/EhfkoDENIgqMMTfwQk98lAyfwe957H1BVFtx23FQVdmPfHrvaC4/p6bJ7eut2Ms5Bf7SliOiC2
	j432szk8HwcbpDJ+RQsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1aC-00005o-TO; Wed, 14 Aug 2019 22:17:28 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1a8-0008WT-VT
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 22:17:27 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4683q45kTYz1rHD6;
 Thu, 15 Aug 2019 00:17:20 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4683q4522vz1qqkW;
 Thu, 15 Aug 2019 00:17:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id G7ErTnX-oNt5; Thu, 15 Aug 2019 00:17:19 +0200 (CEST)
X-Auth-Info: Iuc9ZYI4BIAaDMS/g3FIEq6VQEfCcaJn66m8Acsgr85k6LCEcGh1Wi2xm4up9MZM
Received: from igel.home (ppp-46-244-165-194.dynamic.mnet-online.de
 [46.244.165.194])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 15 Aug 2019 00:17:19 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
 id BF7C02C124F; Thu, 15 Aug 2019 00:17:18 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH v2 2/2] riscv: Make __fstate_clean() work correctly.
References: <alpine.DEB.2.21.9999.1908141328440.18249@viisi.sifive.com>
 <mhng-4eded486-d381-4822-abc5-4023bf7ba591@palmer-si-x1c4>
X-Yow: Well, I'm a classic ANAL RETENTIVE!!  And I'm looking for a way to
 VICARIOUSLY experience some reason to LIVE!!
Date: Thu, 15 Aug 2019 00:17:18 +0200
In-Reply-To: <mhng-4eded486-d381-4822-abc5-4023bf7ba591@palmer-si-x1c4>
 (Palmer Dabbelt's message of "Wed, 14 Aug 2019 14:29:24 -0700 (PDT)")
Message-ID: <87mugbv1ch.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_151725_167238_3142AFC0 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 14 2019, Palmer Dabbelt <palmer@sifive.com> wrote:

> On Wed, 14 Aug 2019 13:32:50 PDT (-0700), Paul Walmsley wrote:
>> On Wed, 14 Aug 2019, Vincent Chen wrote:
>>
>>> Make the __fstate_clean() function correctly set the
>>> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
>>>
>>> Fixes: 7db91e5 ("RISC-V: Task implementation")
>>> Cc: linux-stable <stable@vger.kernel.org>
>>> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>>> Reviewed-by: Anup Patel <anup@brainfault.org>
>>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>>
>> Thanks, I extended the "Fixes" commit ID to 12 digits, as is the usual
>> practice here, and have queued the following for v5.3-rc.
>
> For reference, something like "git config core.abbrev=12" (or whatever you
> write to get this in your .gitconfig)
>
>    https://github.com/palmer-dabbelt/home/blob/master/.gitconfig.in#L23
>
> causes git to do the right thing.

Actually, the right setting is core.abbrev=auto (or leaving it unset).
It lets git chose the appropriate length depending on the repository
contents.  For the linux repository it will chose 13 right now.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
