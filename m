Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC301482F0
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 14:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FC3OzTQq4qeeoQhJcZjXoHnncUTH2I47VO4icAQsr0c=; b=VBBlcsxZpOzrlQ
	Tf1oRXuMLEYyuBb4OowRZTMSKXI+FlIS7Watfj4xBbFe7+BfTJEyalhbyxU00giLAwrYQOMK1Lcry
	kQTG2OLADD360H4i5fmh5/OZKG7mHGF2TNO6cDLqOTBXKLO/3SR6bw9GP5PI3/4d0qK76QGFWD1b9
	kKP0r/ly8l/+2XilNpQtr54TcON5ArmZED7FDEqozJUI6NGjQ7siD8+MHqm+qFtGLkcH1c9Jmclzw
	7qXBeYLCz2akhlpY74uOiRWgUvPXzSmuxu0N4u5NgwCd0HCh2g5LzOCA+MbPfKtDJNEunmKZSPMoq
	ObgNtOaYILBz8/wl1siQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcr4O-0003Om-Li; Mon, 17 Jun 2019 12:49:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcr4L-0003OL-Bq
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 12:49:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0336CAEF1;
 Mon, 17 Jun 2019 12:49:04 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Working device tree for the HifiveU
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
 <mvm8su05rqc.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com>
X-Yow: I'm in a twist contest!!  I'm in a bathtub!  It's on Mars!!  I'm in
 tip-top condition!
Date: Mon, 17 Jun 2019 14:49:02 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1906170546100.4549@viisi.sifive.com> (Paul
 Walmsley's message of "Mon, 17 Jun 2019 05:47:24 -0700 (PDT)")
Message-ID: <mvm4l4o5qdd.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_054905_551981_60DC7792 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Mon, 17 Jun 2019, Andreas Schwab wrote:
>
>> On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>> 
>> > On Mon, 17 Jun 2019, Andreas Schwab wrote:
>> >
>> >> What is the correct device tree for the HifiveU that works both with
>> >> 5.2+ and U-Boot?
>> >
>> > U-Boot should follow the kernel's DT data:
>> >
>> > http://git.denx.de/?p=u-boot.git;a=blob;f=doc/device-tree-bindings/README;h=2ea3439a170236bd912930991ad70ee7289dcd29;hb=HEAD
>> >
>> > Thus the upstream-bound data is currently here:
>> >
>> > https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/log/?h=fixes
>> 
>> That is completely useless.
>
> If you have specific questions or comments, I or someone else would be 
> happy to try to help you out.  Otherwise, there's not much that we can do.

It doesn't even have ethernet, so how can it be of any use?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
