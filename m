Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B53719EC06
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Apr 2020 16:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mfgUAunoLM+HahCbkyo4i/ldtjZiqNOiQU1VXreBYiw=; b=SD5tlw0bRd6TpJTGPnrCiCRyL
	MWIXuRKHdm1qtbtfVifmpoPrwd6QRrYoUHCcuJu5iWT3R7awvlbdX+JIM4yHV2Qm2mE3W0Q5vHaQN
	apKafckKp1FOHn4dZ/BxNOJ5jGztBldQs2/quOyHsH+cC6Ys0eqRRmmxAICNL4DQF1lp2CaHTskUh
	xOiZM1QkfYZXmGxS3Oib0H+eOyUmS56cjH1l+6fCJlJtvmKD8rV3nvTOCLcCivroYFYFnbQU6Kysu
	PIWQQOwSdyT6SlfCqBVL/xI4leUl4TvNUxHWjfBCApIuRdWINywiib9XOQm7aS39rtfetlShvw/rs
	JvldgnUoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6Oo-0004GE-U0; Sun, 05 Apr 2020 14:37:22 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6Ok-0004Cu-ND
 for linux-riscv@lists.infradead.org; Sun, 05 Apr 2020 14:37:19 +0000
Received: by mail-yb1-xb41.google.com with SMTP id 11so7241084ybj.11
 for <linux-riscv@lists.infradead.org>; Sun, 05 Apr 2020 07:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mfgUAunoLM+HahCbkyo4i/ldtjZiqNOiQU1VXreBYiw=;
 b=KI+/uhwxvtydGdjySRjob/lIdKlJiII/vA6C7rFNTo6dRVUCMw1eHiLDWbMRduMKTi
 JDYBCFYX9jDDi3eV5x6NzGZpgOA1g8AWDT/kyR8L1jIi5fhGuhhLrnlpUyig25SvqjsA
 vzrWjKaoGQi7v9sDdvvQmcnY6RdwFu4JR1A9hYNKKIIcuD2ta4KS7a9CvLBM6koAoyXQ
 cMs+FPo1fRbgHSiYoLyVtUVoIws9u74miY2liE1WtnTc3zuQIrYbcuFTIfA1CbgVCGx1
 kUq/2ZQlVIEhIKDt1aPfollhYqOHyxdydBrN6o6nw/fXoBeuc/UgjR32x9zWcw1gjikB
 2mAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mfgUAunoLM+HahCbkyo4i/ldtjZiqNOiQU1VXreBYiw=;
 b=I6qT9qdv5vqml9UDHiQ2Z8f79aVWWBdvoTkBFHtp+CFDstihmaVw7/CylgxV0Sg97q
 ilCpPUpbEqMnd/S1F82T4Bc+P91LiHFlTTWC3ocTfP/FoV4h6WaKtpibX1k+89fGk+4u
 s3oSPK6RviyNC6LL7VOXmBIIv/yuF8gdG807bx7XhLL01PuMJ4nJl4zX0mPq1YptI3vy
 Kt/6DclDJDIsNZUA6GygMqh7TiQAsEtuBenk8RnTKcioQev8p6bzWG6LyVdKv6mrONZ9
 PuLO0GAVPUFX02B+BN8t/lbpSYJN9S9ByZ54lKK005dq82B5gZGa02PflSS0FGmTSIkw
 AKOQ==
X-Gm-Message-State: AGi0PuaS5w4k2cd9ZhXXKeHIZKQ/1/efoAKQP21CXDqVBG8HKOslmf6v
 EzW1wTyVHS0ZRas3KasBGmdxBRF59XO5djAAZfs=
X-Google-Smtp-Source: APiQypKSRfIBkRfIXFXlJVSLEmw46Q8lLHjNcMsvlZBhlrzpGd282f9HGb54tLnKBbr6tojfFpZXducTqTC2t6NQg84=
X-Received: by 2002:a25:3b15:: with SMTP id i21mr30614690yba.11.1586097437766; 
 Sun, 05 Apr 2020 07:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200318011144.91532-1-atish.patra@wdc.com>
 <20200318011144.91532-6-atish.patra@wdc.com>
In-Reply-To: <20200318011144.91532-6-atish.patra@wdc.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sun, 5 Apr 2020 22:37:06 +0800
Message-ID: <CAEUhbmXa9xuszy-h0xSwn9SYOdCNwGSh15pAQDYkvs6+7H9=NQ@mail.gmail.com>
Subject: Re: [PATCH v11 05/11] RISC-V: Implement new SBI v0.2 extensions
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_073718_754944_A0FFED2D 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bmeng.cn[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Anup Patel <anup@brainfault.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 9:11 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Few v0.1 SBI calls are being replaced by new SBI calls that follows v0.2
> calling convention.
>
> Implement the replacement extensions and few additional new SBI function calls
> that makes way for a better SBI interface in future.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  arch/riscv/include/asm/sbi.h |  14 ++
>  arch/riscv/include/asm/smp.h |   7 +
>  arch/riscv/kernel/sbi.c      | 253 ++++++++++++++++++++++++++++++++++-
>  3 files changed, 270 insertions(+), 4 deletions(-)
>

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

