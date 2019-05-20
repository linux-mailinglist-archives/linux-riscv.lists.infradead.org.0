Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC7622AA1
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 06:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M42Jg/xsmcHCei9VJJEyqISxnT+GhXcwUGJ/ucOIIbk=; b=D0iuPzYWb10yDD
	xG21Zawv4+2c9SGyRkwyU5654MabYBdrflpcPzERHx1LDwmWDIwXdeAXTYVBQ2ZO5oSQODmQBf0bk
	Lg55PVizeiKiu9JEF0HaQKzxZrM5oMpO/REJ5YOvVS8zWjFfIeNrTY6WB11zHBIzMtuiQm8OMjzNW
	xmiLf5mt6w/8SnxFU3FHAEp6D0h1M9HacNx0aH17Ibkn30w6y6Se3LvNfJcrWp6X+dTXHJWoBB4mQ
	8SWoTELG3Fr8GcfveCp9G5BsFKslqWBsEsF0Cw5x5yjuKSVUENWwhezFYmujSXYJn1eD9YUWyoF7n
	DW0Z/+Gmr7Bl2zb/mt2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSZmy-0007lA-9F; Mon, 20 May 2019 04:20:40 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSZmu-0007kL-NE
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 04:20:38 +0000
Received: by mail-vk1-xa44.google.com with SMTP id h72so3523225vkh.10
 for <linux-riscv@lists.infradead.org>; Sun, 19 May 2019 21:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k6ZY4dlYUgWC9xMv7mBWW2Rp/GiH/mIF5ibb01bxTfc=;
 b=lkT5TGTLMDU8vkjvDn8uYnIiEn1Srn/zCq28Bk3yu05hPFzq/J9WIfb1mz/Cnl3ddv
 1SUJ9vdF+sPLGGg3qdcdoozj6BxD1t8bKnXJpIYaQdqFm9s8ewTI4a5Fxioq385OYrx5
 0B/w+2wh4wkMzgXigoUZ4YNWOae2ih6l6lL0J3Eg+aHFKYI1BbNhqg+zUtcChHcI+gCY
 P3+ZBuoQ8WxqSUb719V21IJFT6itZqAOgUhVHuZiHfBbYfOENKusS4d2DfNk6ErmVxT3
 4dnSK7TYrBATk/uNDMzrgemZzr+oTrcIfN/AJCeMiCRcg/E8H6IKyNvVJLKeiMLE4d/I
 rOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k6ZY4dlYUgWC9xMv7mBWW2Rp/GiH/mIF5ibb01bxTfc=;
 b=gWTsv2qHDv8ciOkcbVtHGXcetl9BzUnSMGkuYxoUHwHe48itKMJyNIU9KrwC00s07t
 mQaJ7NwWTWayt/miWyt34p0BIfiWPKg+NmXaYjpseCppyeg7UqGl3KiI007lqoDZiLHW
 lmpFE5DVdwN/rCKUxMj3eU/OlPUwjaE71irenztsJ3kQkOBEJYVfvQC4bpve7B5WyNEf
 NE6+8Zf9yGPh35QVi61GQHQ0RkdkPPbuw6S40/1665tZ0VnDLxr5vbx1D0GRZrwyZGvZ
 dVFjnPb9QtnkMBI4glxL1BAm4qpmpcaw0n8yRd8PS3e3KIxMUCXNT+28MZZzlsDXMVqU
 TMDA==
X-Gm-Message-State: APjAAAUGmyXqroTPW3wIQbSzsH9+wr5xtihtTD1FB9uz0A7u9cv2y1GN
 AfvAWYWMT/lwF7xgFtUywAOasZCwmLHpOhKmFwPN9w==
X-Google-Smtp-Source: APXvYqy7AMlG3BgYDRhZy+4VIWVyd9wPF+kIWSEqvT5b9pFPI1+c1u6xaot/nbRBfv0yjmLCjltat2Eli5Yy4dPibj8=
X-Received: by 2002:a1f:3dc9:: with SMTP id k192mr5787006vka.74.1558326032043; 
 Sun, 19 May 2019 21:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
 <1557983320-14461-4-git-send-email-sagar.kadam@sifive.com>
 <20190516130720.GE14298@lunn.ch>
In-Reply-To: <20190516130720.GE14298@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 20 May 2019 09:50:21 +0530
Message-ID: <CAARK3HkPuvsoVh=b2Kn43ubhME6vqpFLoboBM8OGOnb-d3FN8A@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_212036_761771_A94B8F3D 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andrew,

On Thu, May 16, 2019 at 6:37 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, May 16, 2019 at 10:38:40AM +0530, Sagar Shrikant Kadam wrote:
> > The i2c-ocore driver already has a polling mode interface.But it needs
> > a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> > There is an erratum in FU540 chip that prevents interrupt driven i2c
> > transfers from working, and also the I2C controller's interrupt bit
> > cannot be cleared if set, due to this the existing i2c polling mode
> > interface added in mainline earlier doesn't work, and CPU stall's
> > infinitely, when-ever i2c transfer is initiated.
> >
> > Ref:previous polling mode support in mainline
> >
> >       commit 69c8c0c0efa8 ("i2c: ocores: add polling interface")
> >
> > The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> > FU540-COOO SoC.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  drivers/i2c/busses/i2c-ocores.c | 34 ++++++++++++++++++++++++++++------
> >  1 file changed, 28 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-ocores.c b/drivers/i2c/busses/i2c-ocores.c
> > index aee1d86..00ee45c 100644
> > --- a/drivers/i2c/busses/i2c-ocores.c
> > +++ b/drivers/i2c/busses/i2c-ocores.c
> > @@ -27,6 +27,7 @@
> >  #include <linux/jiffies.h>
> >
> >  #define OCORES_FLAG_POLL BIT(0)
> > +#define OCORES_FLAG_BROKEN_IRQ BIT(2) /* Broken IRQ in HiFive Unleashed */
>
> Hi Sigar
>
> BIT(1). Don't leave a gap.

I will remove the gap and update this in V4.

Thanks,
Sagar
>
>         Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
