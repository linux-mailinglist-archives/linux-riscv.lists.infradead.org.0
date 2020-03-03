Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8342B1784B0
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 22:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5FXbiSS6phrCyBSlDdRJ6x/G1vIq9Bm0/o5FHfb1vIw=; b=t6ozQFx3fjqI1tqqe1UjLGXpT
	0g4NNMIWqPv9qZgyL49RKIL9pxKQRtwhaWzpYSAS5OkGFxhddMhXE5k+8s5Lc/852xBGry8/QcQfB
	xTThB+FRX0RW/RkW/RYZOwIl+WweS2Qly2AwShg80fQSx/fSERGRND796xPvyh1Yv+Qx8Fz6s5PEy
	MDJ+1z6QvbcAhUWbF9mngAePHW0zW7KAYnKULWUMILSAOec1nH0KK6dvLV3/yHrZ2tTVJlI6450kq
	saOTLYsrNQpIP1siaBbTiuNGEo8MaDto1oUCAjuWUwzRgKfvHSGQP68zuOPI//3FchND9Af4jzEfy
	RyfalrU+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Eqa-0000S4-Ti; Tue, 03 Mar 2020 21:13:00 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9EqX-0000Rk-Ps
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 21:12:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id f5so2107743pfk.9
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 13:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5FXbiSS6phrCyBSlDdRJ6x/G1vIq9Bm0/o5FHfb1vIw=;
 b=jOAECUUuemFMG+jcbroZneMtc7qWtKzzWb6YZ9KudcoaFS9YHVa2rAlh8vcMqr9TJF
 /CXBV46A2COS8wJsUSXE7j8rLvZ5nCTjMeQVm9aZQAI51KRHRN/I6OyveCMeqjE6dvX/
 ER6p7yw2ITr+oI7Kmz3rEm8pIGLlYzTHjEVaw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5FXbiSS6phrCyBSlDdRJ6x/G1vIq9Bm0/o5FHfb1vIw=;
 b=Zl5JXv+XsO9t98igbkW8GwN+LAoUEvAxvxYvIOjgNCqug82mQuAX/XXVK6z3GFMUND
 guorkOXPa8iy6/RHuAJECUgGoy8F8w4Sw4V6ERHFKqGPloVE7W6czk0AQeYXFQSewegA
 TFyG0Bh2NF1rSAuTiJInl8rZgDbHA5bnkMqt9/C4UZamN9tiZxUj0TWlBdSsKXytCkzI
 hzF9ydscdhZCM7Ux05wmxOTYy83hw4saLNC+jGL77+kcohYHTTYyAbrFgcROyuUxTrh6
 0gJrfEYxEl1w+QTyfSt1TmHb5wdq/o/QF6RbxItXSrUDTVXoa0Nesl418crQHOC8frkv
 dzkA==
X-Gm-Message-State: ANhLgQ323iG7X+IbvvtuPC0zT5NA1Egv039MHx+fKEKzOpMap+bJ5nAI
 /tFhx35j9Pi4/00QNgpJbLVyiQ==
X-Google-Smtp-Source: ADFU+vucXyIb8FnssOZOLkbGPk1bO96Ow3P+bV2pc/F3360lz3zUkWYHVF36hCwUG1VnUGGhwoTMmg==
X-Received: by 2002:a63:ab04:: with SMTP id p4mr5861705pgf.37.1583269976999;
 Tue, 03 Mar 2020 13:12:56 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i5sm123701pju.42.2020.03.03.13.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 13:12:55 -0800 (PST)
Date: Tue, 3 Mar 2020 13:12:54 -0800
From: Kees Cook <keescook@chromium.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] riscv: fix seccomp reject syscall code path
Message-ID: <202003031312.3EB46603@keescook>
References: <202003022042.2A99B9B0@keescook>
 <mhng-f926452f-8491-4deb-9721-a52487de676d@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-f926452f-8491-4deb-9721-a52487de676d@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_131257_864202_3F4FB1E4 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tycho@tycho.ws, aou@eecs.berkeley.edu, david.abdurachmanov@gmail.com,
 linux-kernel@vger.kernel.org, oleg@redhat.com, luto@amacapital.net,
 keith.packard@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 09:55:10AM -0800, Palmer Dabbelt wrote:
> On Mon, 02 Mar 2020 20:46:46 PST (-0800), keescook@chromium.org wrote:
> > On Sun, Feb 23, 2020 at 10:17:57AM -0700, Tycho Andersen wrote:
> > > On Sat, Feb 08, 2020 at 08:18:17AM -0700, Tycho Andersen wrote:
> > > > ...
> > > 
> > > Ping, any risc-v people have thoughts on this?
> > > 
> > > Tycho
> > 
> > Re-ping. :) Can someone please pick this up? Original patch here:
> > https://lore.kernel.org/lkml/20200208151817.12383-1-tycho@tycho.ws/
> 
> Sorry, the other messages didn't end up in my inbox.  I'll take a look, as this
> seems like a good candidate for rc5.

Awesome; thanks!

-Kees

-- 
Kees Cook

