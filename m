Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BC3EF60
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 06:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mveBvnYmjWQ8mHKN03ddEuDrWfBY3XtNVApLlGrKQnI=; b=rFeKhTNnh1QOAS
	c6ccYK0l0/sdl43hbw9/2w85+pY9xPZa6YWV2NcjbIQMGmKUyeISLFOII1fIbiv6BDoVuC61f+LKT
	6ch15QJ78SFCzcSy6dQJbZVmbNjWpMBS864Dq+SgDjUGvIj6kZtMyIJ79nebsABQTzqzWU9WuEibj
	mHw555mdBdJZGLebHlinjiN70X7kBCxiC3/uf7weqDOjaKajpyAGRjWMWvxYrHsZc3n0kESQV2Hxi
	8HF0WVZMYqREjLIAuTzaCxQilMOxAPXKiVFdSOKHQuHnwt48yS7XMhuiAO8BOO5eAR8MAnzJzJzeK
	2f67FKkO3xcwReAKvL+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKGn-0007Ky-BG; Tue, 30 Apr 2019 04:21:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKGj-0007KQ-RT
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 04:21:27 +0000
Received: by mail-lj1-x241.google.com with SMTP id c6so4921717lji.11
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 21:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8t58pyvZxW1Md6PX1g2Ns+VeO6t+qdcIVL3s1azo1PA=;
 b=BKJ/oB49fE/XRK+Gh8TN/iWBL1nKOjQ+kW/y7SPwIp8O0ur5ZqCpBg2KebAc8tEjp5
 1DFxABlW/D3hIquSYlN0XsJIdXvdlIlPgHgcctMTv2rltVqQhv/QKVbNOS71B+FNtPaY
 vgqM84YW0qKTBXqO8/e7JbBQKE79/FRH1QoqUdyfzasCIFBUTMPyOXWiZy3Sqj7+MuHf
 2aiSxx3hTZ65PvE0SPp82BcS80Zuq2fglWZ3R83rAlu8w+dVaYN1vleF2cRwvksV6qwS
 kl8PKsVWSFnLTA71uFJQo8Nz66wBTmsC6pg+ZAzjw61P9fyfSlG/mdkVHp9fr8DzjspI
 XXJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8t58pyvZxW1Md6PX1g2Ns+VeO6t+qdcIVL3s1azo1PA=;
 b=oP4MdLuzk7A/ex8HksQU9KNrTxB7wMVe360oIW7cn1dxJfUiW1MASSXl89Q2zUhktP
 mRa8QOLOVR0mE7mqbhs0KcAv55uJBcShr5qnRqkw8+1P2LDxCVy9uwQrEuEWAy2p+pHJ
 SmnYhcftCo0LiytWBlI3CSm/vIdhg2dLvgpU/QhgVYE9ackvMWciABhSi7coS3RSMzcV
 k/Ez4TAEZyBDUUm1hPOy0eJ2Xq7k967w9uF3+bNm5QE1+KYS6J71ol8eUkaaXVKg1dfT
 HAxTWOyTTORfu4x3K+IxUhdDB+6oJEehD7bKjUJ7ZnT/9xoBdwCAt6R74X3b9ZV7u0CS
 flRQ==
X-Gm-Message-State: APjAAAWkzOy0sreQC+EZyo8CqznX3+HHykoaNBzPb1iG8OxQGojLUN7Z
 u+P+Y9M8Ue2Q3/QMRerFrpcMWUE2zc3MxEaJ4yAKkw==
X-Google-Smtp-Source: APXvYqzkQQWeXalbI6bQvrte/IcR7hF54ikPQKnx35AOhJAFG3ySKNN1bIXiA6KbwMDF6/hcnNfUD2MhHS2jZCl9Ysk=
X-Received: by 2002:a2e:9855:: with SMTP id e21mr470763ljj.180.1556598082317; 
 Mon, 29 Apr 2019 21:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <1556171696-7741-1-git-send-email-yash.shah@sifive.com>
 <1556171696-7741-2-git-send-email-yash.shah@sifive.com>
 <20190425101318.GA8469@e107155-lin>
 <CAJ2_jOEBqBnorz9PcQp72Jjju9RX_P8mU=Gq+0xCCcWsBiJksw@mail.gmail.com>
 <20190426093358.GA28309@e107155-lin>
In-Reply-To: <20190426093358.GA28309@e107155-lin>
From: Yash Shah <yash.shah@sifive.com>
Date: Tue, 30 Apr 2019 09:50:45 +0530
Message-ID: <CAJ2_jOEoD=Njp+L+H=jG59mA-j9SnwzyNmz7ECogWmbvei_f5Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] RISC-V: Add DT documentation for SiFive L2 Cache
 Controller
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_212125_949858_8C4E9837 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 3:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Apr 26, 2019 at 11:20:17AM +0530, Yash Shah wrote:
> > On Thu, Apr 25, 2019 at 3:43 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Apr 25, 2019 at 11:24:55AM +0530, Yash Shah wrote:
> > > > Add device tree bindings for SiFive FU540 L2 cache controller driver
> > > >
> > > > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > > > ---
> > > >  .../devicetree/bindings/riscv/sifive-l2-cache.txt  | 53 ++++++++++++++++++++++
> > > >  1 file changed, 53 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > new file mode 100644
> > > > index 0000000..15132e2
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > @@ -0,0 +1,53 @@
> > > > +SiFive L2 Cache Controller
> > > > +--------------------------
> > > > +The SiFive Level 2 Cache Controller is used to provide access to fast copies
> > > > +of memory for masters in a Core Complex. The Level 2 Cache Controller also
> > > > +acts as directory-based coherency manager.
> > > > +
> > > > +Required Properties:
> > > > +--------------------
> > > > +- compatible: Should be "sifive,fu540-c000-ccache"
> > > > +
> > > > +- cache-block-size: Specifies the block size in bytes of the cache
> > > > +
> > > > +- cache-level: Should be set to 2 for a level 2 cache
> > > > +
> > > > +- cache-sets: Specifies the number of associativity sets of the cache
> > > > +
> > > > +- cache-size: Specifies the size in bytes of the cache
> > > > +
> > > > +- cache-unified: Specifies the cache is a unified cache
> > > > +
> > > > +- interrupt-parent: Must be core interrupt controller
> > > > +
> > > > +- interrupts: Must contain 3 entries (DirError, DataError and DataFail signals)
> > > > +
> > > > +- reg: Physical base address and size of L2 cache controller registers map
> > > > +
> > > > +- reg-names: Should be "control"
> > > > +
> > >
> > > It would be good if you mark the properties that are present in DT
> > > specification and those that are added for sifive,fu540-c000-ccache
> >
> > I believe there isn't any property which is added explicitly for
> > sifive,fu540-c000-ccache.
> >
>
> reg and interrupts are generally optional for normal cache and may be
> required for cache controller like this. DT specification[1] covers
> only caches and not cache controllers.

Are you suggesting something like this:

Required Properties:
--------------------
Standard Properties:
- compatible: Should be "sifive,<chip>-ccache"
  Supported compatible strings are:
  "sifive,fu540-c000-ccache" and "sifive,fu740-c000-ccache"

- cache-block-size: Specifies the block size in bytes of the cache

- cache-level: Should be set to 2 for a level 2 cache

- cache-sets: Specifies the number of associativity sets of the cache

- cache-size: Specifies the size in bytes of the cache

- cache-unified: Specifies the cache is a unified cache

Non-Standard Properties:
- interrupt-parent: Must be core interrupt controller

- interrupts: Must contain 3 entries for FU540 (DirError, DataError and
  DataFail signals) or 4 entries for other chips (DirError, DirFail, DataError,
  DataFail signals)

- reg: Physical base address and size of L2 cache controller registers map

- reg-names: Should be "control"

- Yash
>
> --
> Regards,
> Sudeep
>
> [1] https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
