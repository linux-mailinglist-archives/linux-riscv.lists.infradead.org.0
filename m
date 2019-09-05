Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E751A988D
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 04:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmGO0NP3Yi1VbnDK0ShqzK5nTqGTluQeWodc0zIT/e4=; b=BUq/NOvpgvDp1m
	bx9qLSFIXfky+zgnlbz//24jkHPB36Q+O5n+fRyfkdRpq7VHEvJ3OaVAdn1xM1E667prFpzIoo5my
	QM9fp8AC8lcuEiXdm2HgZmIAvq2oEtHYHrVVPS4oWRtHAAvfVWvYvAuGYamVOzdp/PF+K/VsEtKAH
	OOASwkowXZFV723k6WyMaLNAWybMvQYDnwGB4OxIO3oFuPU7QMgA0OC7GgbQa3UW6SARn2whnDWYN
	/mD+E+hr2+q22TPCYmcyl/Q5BK3tt+WTyy+lDbk9F9QcvWRjwXEvCMVTpOjTKZdacIIczMvH39/ck
	RUihUUQuo/97U+VJBwKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5hqG-0005pE-NA; Thu, 05 Sep 2019 02:49:48 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5hqD-0005oX-7Q
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 02:49:46 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.08002193|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.0740845-0.00454813-0.921367; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03278; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=4; RT=4; SR=0;
 TI=SMTPD_---.FOyO4sV_1567651782; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.FOyO4sV_1567651782)
 by smtp.aliyun-inc.com(10.147.42.253);
 Thu, 05 Sep 2019 10:49:42 +0800
Date: Thu, 5 Sep 2019 10:49:41 +0800
From: Mao Han <han_mao@c-sky.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH V6 3/3] riscv: Add support for libdw
Message-ID: <20190905024940.GB3949@vmh-VirtualBox>
References: <cover.1567060834.git.han_mao@c-sky.com>
 <4cba2dfb6b1ef0df01185c6bce78a0a2867d0a7d.1567060834.git.han_mao@c-sky.com>
 <alpine.DEB.2.21.9999.1909041422220.13502@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1909041422220.13502@viisi.sifive.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_194945_441475_E1779A19 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 02:24:57PM -0700, Paul Walmsley wrote:
> Hello Mao Han,
> 
> On Thu, 29 Aug 2019, Mao Han wrote:
> 
> > This patch add support for DWARF register mappings and libdw registers
> > initialization, which is used by perf callchain analyzing when
> > --call-graph=dwarf is given.
> 
> > diff --git a/tools/arch/riscv/include/uapi/asm/perf_regs.h b/tools/arch/riscv/include/uapi/asm/perf_regs.h
> > new file mode 100644
> > index 0000000..df1a581
> > --- /dev/null
> > +++ b/tools/arch/riscv/include/uapi/asm/perf_regs.h
> > @@ -0,0 +1,42 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> 
> As with 
> 
> https://lore.kernel.org/linux-riscv/CAJF2gTRXH_bx0rwsTZMTnX+umZfVTL_iVnewPtVM50sLaqJPTg@mail.gmail.com/T/#t
> 
> is it possible to change this license string to "GPL-2.0 WITH 
> Linux-syscall-note" to match the other Linux architectures? 
>
Thanks for suggestion. I didn't notice the UAPI headers are supposed to 
have the exception notes. I'll update the license string and resend them.

Thanks,
Mao Han

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
