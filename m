Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D8829034
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 06:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNVNjGOMoYwfIRpf524x/Uq9BAuTTDXjsSeM2alOOxM=; b=qKXuxxeYjpjSE0
	RlTMJfo2fQs/UT9XT8S5CBuDlGqB0La98NStyly1jM7nA6TZ42OphNTf2iM968IOa+fkK5XdOO+BW
	fvx2mb3Uku0JsSz4OO3ymRMz38IO3oSdkHogExMOEs7ue0+c234Oal4tY5jhmVpVl1uZuOKbsPgOq
	bkKaGDAJePbfON+CoEtI3Gi1jzg/SCR59G5SQrOyRwrU9DobgomBWeqTrrMcqvPRG60QRIk2w13Y1
	bsKZKKOE/jZZFkUzstOgcrkLtBNNhFJsOefENrTOHQiw+0iQ1l6Q6k9Qm+BjnigWgb1GTgZNkFiur
	DymKJo3JK7uwrUELJZ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2EG-0008Sy-78; Fri, 24 May 2019 04:54:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2ED-0008Sa-OK
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 04:54:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id h19so1989636ljj.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 21:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0p20JZOm8Q5zL+TRyVFEg8a2DDLhMZrB4Tuc8+bGlVs=;
 b=NdLlu5FyOM02giIhSKVTGqrQ9mhGuv6PA0VT3iSCPaW8gw95H7I7/ye4/yJQ/doBe+
 P3PKfm/STHksEBlqaXdsRxbVZhAUmKQlkVcOQJes9jBlOssmnfWcQo3sZTy1fXSXKC4x
 3HpUTQuwdDAe2NEQRIsIBBpcDgeU8kW7pY7gWOk++jtNIDdBxy1TsJcssLIa1CSReK1f
 OwjdlzjjuVrT0rWaZc/WAKIWBOzGBgefCexjSCfUNFpNr5AcTa4H4+o1Bh546B3Mbnxh
 51qENYczplF8E3vogRwa8U2fHQ7hK8WKdu+9/ETb86swbsAdzty14xuWE3J3kk5iF0Yf
 dl/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0p20JZOm8Q5zL+TRyVFEg8a2DDLhMZrB4Tuc8+bGlVs=;
 b=M9y7UmnQasuUtI5tLHViPlwheAheZwVg+ldpGUK11hTfMfIhg0+0ywfn4ut0REA7In
 ZWzlmXIF8PQKJzzvoDCfQ0shm00ZocyIoJ+nawiWYlnTkHg3eq8SZg532GwZdsNuTup1
 5mJnSYkVr3Xjaq7XXRX8D0MtaUYW2hy4r4WaE6J5+p6y9NGqeNQpEAugFYV2pdWUqtH8
 zU2mbfB07Th8yL2PTJ7WZGm9mf5FjrGnE79Bww4Fq0l3WHkm9fqmPWlfTVz9s49d36Vs
 Ld4HKdMkjYI4t95Au/wYI+gW/+FprI6yBx9ydihExyEn09Zegd+rewHXEcMgfjemFIMe
 KuMQ==
X-Gm-Message-State: APjAAAWONf1UjdBFT6UrmhZz6bVH1UNGfVRt3lqIVzqARX/OY8XlhHiz
 02xTRmFgC0nU2PSRPYlArcYIlz/GnJosBqcwU0ZXhQ==
X-Google-Smtp-Source: APXvYqw+GBX6IR44aYeJSdzjL+ZaEIKJ61JkR+OOuDdlscXdQs1cdp/fSEKXTniJ9Nxq/1Q2fX0A2wBUzHx8TJZBgtM=
X-Received: by 2002:a2e:86c2:: with SMTP id n2mr18578922ljj.23.1558673687971; 
 Thu, 23 May 2019 21:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <20190523.092825.2184612182055559835.davem@davemloft.net>
In-Reply-To: <20190523.092825.2184612182055559835.davem@davemloft.net>
From: Yash Shah <yash.shah@sifive.com>
Date: Fri, 24 May 2019 10:24:11 +0530
Message-ID: <CAJ2_jOHPbFYtLYoCD0jtpLEyDM9is9gr7sbF+yZCHyfERZc48A@mail.gmail.com>
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_215449_794385_045C9848 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 netdev@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 ynezz@true.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 9:58 PM David Miller <davem@davemloft.net> wrote:
>
>
> Please be consistent in your subsystem prefixes used in your Subject lines.
> You use "net: macb:" then "net/macb:"  Really, plain "macb: " is sufficient.

Sure, Will take care of this in the next revision of this patch.
Thanks for your comment.

- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
