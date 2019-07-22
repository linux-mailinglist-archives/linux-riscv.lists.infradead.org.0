Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D80E6F899
	for <lists+linux-riscv@lfdr.de>; Mon, 22 Jul 2019 06:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCSa1+og+6z54NXImcPYj2N3HCysAvplLNluHPest/o=; b=k4zjhg1Va/nVmY
	ZE7wfeDDMT47ILnZTin3u99w50aPx4qGdKRyv1oSIe3vDzyMAkSLHB8GOahcT0Ya+n9ph2DjZj5uD
	I5/AWPBR1yiPV29DZO3EySJciFxbs7RfrmYEhDygF4bZiUQZnM3xdNbvb6i67iGNL+OMLYbSre4RD
	nefmYmk7fZ8zvzXjD43fc8Dqr7D1WsrEf729VhPysi8kXVcvN4H/WCz/6L2Mo4NjRFtDJRuNzgXY9
	impkRDrCP/xQN0Ei61PQNUquQH5tHhBdqXN3l+YIMwo8kxdSEgD7/OwMPwNBrHNvAyn4vMSppjLlE
	8Lp1yBGZZ0nr/GcXSSaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQ7n-00040Y-Oo; Mon, 22 Jul 2019 04:40:36 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQ7j-0003zM-1j
 for linux-riscv@lists.infradead.org; Mon, 22 Jul 2019 04:40:32 +0000
Received: by mail-lf1-x142.google.com with SMTP id p197so25565576lfa.2
 for <linux-riscv@lists.infradead.org>; Sun, 21 Jul 2019 21:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9ncs42SKDIyAXPYsF/YsHVruecC4cl/V7wjDZefhpkw=;
 b=k2bbZ2b2oyVs0xaDgMXk4iGhoEBB5SNlDTYlq+jwwsMrg7WYd24sYe0mDHDlQSvoDX
 vRx/T3SbjcAWD+kP5mFuzsgQ2m5N75YkNxvwp3OBsTs2n/LqG5cH18XvsLuHTHpeChRI
 58rku89FNYqjt0vAT1GR0Om4Y1TenH7EpGIEbx1Rjn+gX6+YnEx8d5l5WmPSWmKkmcc0
 Vy+VW7wLRHdd4wOYN58RXO07SK6yY7S7t8Es8IHlzBB6NdgENlcFfB3Hx77JdfFCB2mU
 KMUBU0zBbQD8GI/T4Y0iRMawLQqjbap4/KZBz40ji+Kc3r6kVLxhakPmoLkXFytcFO/C
 /vaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9ncs42SKDIyAXPYsF/YsHVruecC4cl/V7wjDZefhpkw=;
 b=ekIfQrPQg1yIVz1bQXStLh5QlZEn9KnqMzPIegfAYUSk6A736AKZOoXGVPWRRhywGM
 gWA3voysE/vaa2fQj1z24jv0eoDbTVfWMEpB8vHgnhUrMPNrhxghBWCjhNA7tUyh911L
 I3XfMqW5/EvSMUAGPrSAluyNfIMBENUZhQ19z8dqJ+wZx7RB2TUIh6AWcmHLMIr4XE2N
 Fz8NEKQB7nnstyUD/jt2iIn/ZeGTmu3v2FFWF/nqrJVQh258b2Iw4RAcPLzmDDQ5DcnK
 E+UeLNxbi6TcxoR9uD5g2iHyGd7R8zQHxnLC+B1n8JZrE8jk5BaRnrmxMlzITX1shIPu
 r3CA==
X-Gm-Message-State: APjAAAWNQ9azNdKwazowj/UAtucnhBraKC5MTVrSI2jngqgy4w4DIgDS
 GBfN4OVQYt1s8z+J6ko0jx17jgH45YQkJxofDMSOiQ==
X-Google-Smtp-Source: APXvYqwvAIdl55t6ZBi0sof5NGjfaHPKrALdFIaGt9ZEylIuJumZ5agEDn2OAQB5ZWTfVUpTC8ov8KSHgsYAMZ1msnk=
X-Received: by 2002:a19:6602:: with SMTP id a2mr29671361lfc.25.1563770428381; 
 Sun, 21 Jul 2019 21:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
 <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
In-Reply-To: <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 22 Jul 2019 10:09:52 +0530
Message-ID: <CAJ2_jOEHoh+D76VpAoVq3XnpAZEQxdQtaVX5eiKw5X4r+ypKVw@mail.gmail.com>
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
To: Nicolas Ferre <Nicolas.Ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_214031_105523_A45E8102 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 5:36 PM <Nicolas.Ferre@microchip.com> wrote:
>
> On 19/07/2019 at 13:10, Yash Shah wrote:
> > Update the compatibility string for SiFive FU540-C000 as per the new
> > string updated in the binding doc.
> > Reference: https://lkml.org/lkml/2019/7/17/200
>
> Maybe referring to lore.kernel.org is better:
> https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

Sure. Will keep that in mind for future reference.

>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks.

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
