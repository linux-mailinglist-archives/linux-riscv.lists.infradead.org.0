Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEACDE2D
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 10:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TRdDUCxNxaRdLAtKaYhgk5jf7xGs2XsHzIP61LG5qfI=; b=XwP5xu9LeN49Oc
	zvGqwcBzEU7crv1fLB4E6sVBx0eer62WB8DIPG0X8YjAesmLq/TpMSwaOQ0rIhUzlfqkuhNMIgKIW
	BvriTt1myLyhCBH8zkbhGKKuAo0dNzyY3SJzZ6HwErPX+Zqkf4r10MkAi1B4GNe9spFd9/1Ek1nBz
	G5GR6z81DkjzPMw9C2hG5H44hwGgpBSrOSzfQ6y/JWLzWABzmtYy4Brd4oXqjXJ7MjXN9Sd7mJ6sR
	TrygTyewomwMHTq0gLEu2euKBOU1DYD8soxHhJy9q3chNNOPl+JUXh4hhBdbd4IyFMd8huwmCRftz
	AypPgE5iBxlk9L8uss5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1sJ-0002hF-LQ; Mon, 29 Apr 2019 08:42:59 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1sG-0002fS-Fw
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 08:42:58 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.239167|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.325225-0.0257244-0.649051; FP=0|0|0|0|0|-1|-1|-1;
 HT=e01a16384; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=4; RT=4; SR=0;
 TI=SMTPD_---.ERai8Dx_1556527374; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.ERai8Dx_1556527374)
 by smtp.aliyun-inc.com(10.147.41.143);
 Mon, 29 Apr 2019 16:42:54 +0800
Date: Mon, 29 Apr 2019 16:42:05 +0800
From: Mao Han <han_mao@c-sky.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 2/3] riscv: Add support for perf registers sampling
Message-ID: <20190429084204.GB22718@vmh-VirtualBox>
References: <69322515ac3fcba8af004039f44473cec5ecbdcc.1554961908.git.han_mao@c-sky.com>
 <mhng-0787435f-0b2c-4ab4-ad73-0b68a815e613@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-0787435f-0b2c-4ab4-ad73-0b68a815e613@palmer-si-x1e>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_014257_184941_3ABC799F 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, guoren@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 02:11:02PM -0700, Palmer Dabbelt wrote:
> On Thu, 11 Apr 2019 00:53:49 PDT (-0700), han_mao@c-sky.com wrote:
> >+	PERF_REG_RISCV_S10,
> >+	PERF_REG_RISCV_S11,
> >+	PERF_REG_RISCV_T3,
> >+	PERF_REG_RISCV_T4,
> >+	PERF_REG_RISCV_T5,
> >+	PERF_REG_RISCV_T6,
> >+	PERF_REG_RISCV_MAX,
> >+};
> 
> Is it expected this eventually supports floating-point and vector registers?
> If so, how do we make this extensible?
>

It seems none of current architecture put their fp/vfp registers into this
file, gpr is normally enough for backtrace and context restoration. I'm not
quite understand the problem of extensible. All modification to this file
should be synchronzied as the perf tool is released with the kernel.

Thanks,
Mao Han

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
