Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D798529028
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 06:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXmVDqeyrAQmwtDV90lpQgjF9CTGItEPFjsbyf9GSv0=; b=mwdnD7oD9pHUHI
	kAI/whW58iedlrwft5u7MNVNaKW/SHjvDDIHxTcpUrs5dsm98AZgYOkTWbLYna0wKQl2lvdSg590U
	xWGDVcl7VPDrpgSiKwryW5kDzDNXqaGoYxivSq47rQZm/M14lG3FvYzQT0oFdxYbeV6KR6/li9xPI
	1q3bnSvnUgSIBXqyisCq2ToMWGazZyaD2hf4wezUCzPJwCIJMqbT9BAHFLMkXPM6yQlbRyywjzGWi
	6QsXp1EsAknsjhaG3W1+6CwV+2hhEepgqTi7n8JVr9ES05EAZj3KfPioczMRiRNqEoGSEEJDM9Fhn
	XKpEOKgsdM+kjI7DjYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2CG-00081I-6c; Fri, 24 May 2019 04:52:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2CD-00080i-2u
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 04:52:46 +0000
Received: by mail-lj1-x242.google.com with SMTP id j24so7474580ljg.1
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 21:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V20z0KsB9cueisqTKMsu9xWIxFvhrK8pRRyFM+6kcXg=;
 b=KUQBIAgjJy54O12HR/RuHSSIcavrDhN4oFMJxSyw1H5om5949xmqcpUMUM0aXJU4EK
 xXbGmF35qNp/8LxI91Qi6twy/cbPli9PqZPhLNpqh6as/vgnhChBwNHqEGDRYpOcbYoK
 FvlTy715Wme6Rct1Jg947fwAsiaxvQ48DjpEmvR3hwtc5YFIjXe5ZdUv5E9VTq8RljSQ
 vWydQb9aZ3ZnUrGShFzntaJBuebxU1w37/f/1Zxz66M4E6Oo03cx7S+4naQAsfS+IXi0
 fRydRh3q7XKlnkp3bbjOUT9qC5pftTrdTVDlNPOiLcoVw1KV8MVk1PRDyp8eskBxRdB/
 0+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V20z0KsB9cueisqTKMsu9xWIxFvhrK8pRRyFM+6kcXg=;
 b=OhW8Mcnq5qzCzoC74aInJBACCCqbN4eqP3T6JRUKHcjLkEUq03SVVks6p5I0uIQkQG
 0EdXBuvGGSrI87KUsxRNOF4SBcJGY/UIuj/ceaPOgCcFK9knlgLgjnTn33ix/ehqDMHs
 35yFoDixfcmxDsimWQfqpl4JDVoVhCeS29nRb0qKzEeFRIes5/tiK88zymz+zb/QcS2f
 sOIwImTbZjIWcVFkgAKjejtXpH5odmEiHfT7Sm5cc4WIzIOT1jTWM0FNJOqGHZMcyGiO
 PQa20okTjv4A8ZW8zHORqWER+etZxtk3w9TzZyuqty6J9lejjZGI19o6O3rY/z0pGh8/
 Zj1A==
X-Gm-Message-State: APjAAAU1WOY/gxwt2SnqPFV4uV9OXzvWoBqtjySd55KzLB6cy/abTFcv
 tjkDrgGAqusCfRaEtKzv9/d9b1ZRTsnGgejO2KZryw==
X-Google-Smtp-Source: APXvYqxz0wNQDMda+GtVe5gubvtJUXWkBLq/qX5juG1Eg/5ylGDqqmuLdtNb6543eugrO6i1QFuePfWPqT9od0rGXI4=
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr16405025ljj.147.1558673563302; 
 Thu, 23 May 2019 21:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-3-git-send-email-yash.shah@sifive.com>
 <20190523145417.GD19369@lunn.ch>
In-Reply-To: <20190523145417.GD19369@lunn.ch>
From: Yash Shah <yash.shah@sifive.com>
Date: Fri, 24 May 2019 10:22:06 +0530
Message-ID: <CAJ2_jOE0-zK1csRNeiAmag9kEbvOGhbvRa-5ESYif7e15gpRcQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] net: macb: Add support for SiFive FU540-C000
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_215245_142521_7E744F8F 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 davem@davemloft.net, netdev@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, ynezz@true.cz,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 8:24 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +static int fu540_macb_tx_set_rate(struct clk_hw *hw, unsigned long rate,
> > +                               unsigned long parent_rate)
> > +{
> > +     rate = fu540_macb_tx_round_rate(hw, rate, &parent_rate);
> > +     iowrite32(rate != 125000000, mgmt->reg);
>
> That looks odd. Writing the result of a comparison to a register?

The idea was to write "1" to the register if the value of rate is
anything else than 125000000.
To make it easier to read, I will change this to below:
    - iowrite32(rate != 125000000, mgmt->reg);
    + if (rate != 125000000)
    +     iowrite32(1, mgmt->reg);
    + else
    +     iowrite32(0, mgmt->reg);

Hope that's fine. Thanks for your comment
- Yash

>
>      Andrew
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
