Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0519947FA6
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 12:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsvkJdrEu7/gkNGvjwL3ta7jqw/2+HY0mcBnPvBuSK8=; b=WZX3ICDZJ6/GlY
	AFNDRbX4mtq7xoUtWzUvLfwTsqnPmkL3AedeKTAJfc4QudXmA97KHz5iEscW3Nl6E6/82V43LJ1cd
	XPjwGQQfpkNYKfH7WdQCKlffXxbgcqjQjgWfAO/0aC6wk1WkvUwlDekhVUVraiYhNZuUfgTq8DMxM
	vwvoxB8n0InQ33u++LfWSzh0f5I09joaLzojjgLpYuXYbbOKFAZ9Udw1AHJS1mZr1qfn6CfY9RebB
	5lFrOW+SpPy8URCu5DJv1rkqC8kQNiH6Zf+L3zvkxjG9lRZug8FVhlTnM5/LQPQnIA/2bysqN3AV8
	1Y8FBGl9kMeI+PQoMXZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcory-00019x-P8; Mon, 17 Jun 2019 10:28:10 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcort-000168-9C
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 10:28:06 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so15427162edv.6
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 03:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=8UBAA4hob1aUdMG3Ki6/LwA/eBo66cYa0fDftPuC+I0=;
 b=I1XjncqzU2jmO6RevBy9IzFleq0nMlnkC6MDumuIsz5JVeH2+1xm/ZhpM/VGcEN+9K
 9pSyXGeLCIhrXK1FMrm37s22+ShjPNYMS8/Wx1HJfbo39srKyIqMMMhR0mqjHq0Eqj2/
 EEIYhEhsAbI7rnU22Ey0TKxrY8eexf9LGgSGqqGzvkvb6TeYsTMqmkFl0qWa7ckNmYhC
 gRbkiSnv1F7ZON4E588pZS0q2mwTvOSENtx+10LxFski6vF+C1ehb6SXdQghnOXmCoNC
 IgdbbbhFi0YtJmlL+kXM01BwLelRvL7Itusxmc9seVJAYzA6dGsXWWWqK+8gqLxSqbUc
 O3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=8UBAA4hob1aUdMG3Ki6/LwA/eBo66cYa0fDftPuC+I0=;
 b=pkj3IeapuuivGholo7VAw5hdivf/fqr1F3IxYOMt72CyZ5uVw/qxZdXOE3i5+K9Y4p
 m6KHfkbBB/BMTlM7EKyVxtcKwwJtxiN/YVkq99Blko/4/3gvUhu2GFGqnHsR83rsQs6G
 tLoGG5lLbx5IfxsmAJYv9Aj2w8PDWshnHZAIY1/lfJrB0hf6VVptZafWcXDVTbSWH0yH
 qyhGsjlB4f7vOMwsJOqDgFUXdxGtSiIfJzvG3NFV+lNuzY6vDGzhDbeWLarpmW43sy4f
 WXjOMjTVkPHTHJpA37A+QEAZVtq6P870r1Q77GpjnsDIZSwytNSBekXTVIuBUSMWm6mO
 VfBQ==
X-Gm-Message-State: APjAAAWDVxYdsCufD/UUFGmAZEb3Em0UI0bl+iZt749oxZnN71tHWG1Y
 4bG6eRvHc7EED6qFYYSsxOvbxw==
X-Google-Smtp-Source: APXvYqwMwtN/9BiCAeDSq8bw6UaVIvcm2zKgRR7fZSgp8cG8nJGZNjfgqqkTyxFwZd/sIBVKqa0hXQ==
X-Received: by 2002:a17:906:a39a:: with SMTP id
 k26mr69719766ejz.82.1560767284087; 
 Mon, 17 Jun 2019 03:28:04 -0700 (PDT)
Received: from localhost ([81.92.102.43])
 by smtp.gmail.com with ESMTPSA id f24sm3624644edf.30.2019.06.17.03.28.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 03:28:03 -0700 (PDT)
Date: Mon, 17 Jun 2019 03:28:02 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
In-Reply-To: <CAJ2_jOH-CacU9+Lce80PQzG1ytxvSZmjfSMwL9=kbXpWxyU96Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906170324250.19994@viisi.sifive.com>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
 <CAJ2_jOH-CacU9+Lce80PQzG1ytxvSZmjfSMwL9=kbXpWxyU96Q@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_032805_331305_CFACF4CE 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Andreas Schwab <schwab@suse.de>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?ISO-8859-15?Q?Petr_=A6tetiar?= <ynezz@true.cz>, linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 sagar.kadam@sifive.com, netdev <netdev@vger.kernel.org>,
 linux-riscv@lists.infradead.org, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019, Yash Shah wrote:

> On Mon, Jun 17, 2019 at 3:28 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> > On Mon, 17 Jun 2019, Andreas Schwab wrote:
> >
> > > On Jun 17 2019, Yash Shah <yash.shah@sifive.com> wrote:
> > >
> > > > - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
> > > >   driver. This is needed because on FU540, the macb driver depends on
> > > >   SiFive GPIO driver.
> > >
> > > This of course requires that the GPIO driver is upstreamed first.
> >
> > What's the impact of enabling CONFIG_MACB_SIFIVE_FU540 when the GPIO
> > driver isn't present?  (After modifying the Kconfig "depends" line
> > appropriately.)
> >
> > Looks to me that it shouldn't have an impact unless the DT string is
> > present, and even then, the impact might simply be that the MACB driver
> > may not work?
> 
> Yes, there won't be an impact other than MACB driver not working.

OK.  In that case, there doesn't seem much point to adding the Kconfig 
option.  Could you please post a new version without it?

> In any case, without GPIO driver, PHY won't get reset and the network
> interface won't come up.

Naturally, in the medium term, we want Linux to handle the reset.  But if 
there's no GPIO driver present, and the bootloader handles the PHY reset 
before the kernel starts, would the network driver work in that case?
 

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
