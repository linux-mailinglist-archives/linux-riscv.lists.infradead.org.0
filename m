Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BDEB4A4B
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 11:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enSWjlMPVGJUs+F2dBVwBS13L7NKOVst4W0UMW1MK0k=; b=pPET1YH5O/L5oL
	AAMYS+mZWo+6udc/jq5clkEug5rV4qa1bDzXmLCnkozO8F8Yo15dEpKXhKfzkKsdxGQAAVde5+GMv
	CstZaiYU9Jstg3nxiPB7rao+7cm18PvynmUIBKDbNKPX5QfUqI+Ki++FQp0iiCj1a+ydi094LUsmM
	Ki26kCo1X6qAcRIUD4ibV5grLU9x+OYeqdOTIHENlFLl5IoQlCv9KCr2o7x0ieTwhjpE8c82HEMjp
	JMMpOoUCmMJISA26PlfjVKQPE34pYtHW9aRgu3RyDzPNFEQQ6zi4Q5oQZ6rEmwEFHJ+VzYYqeeRKZ
	4wDTm52ygEmsDwDfKeOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9hu-0007uO-1v; Tue, 17 Sep 2019 09:23:34 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9hn-0007u4-HB
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 09:23:28 +0000
Received: by mail-lf1-x142.google.com with SMTP id r134so2243611lff.12
 for <linux-riscv@lists.infradead.org>; Tue, 17 Sep 2019 02:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GuVy/dTL0zVi8KB992cYfUvwyuZX5WJTHthmI6rNOT0=;
 b=Bg7owd06h9hLmdCxdxpcsTn4LUAfPv+Fcad1/azM2mPLlkqQ4BA424Bz+zbIl7/0Hs
 eKql7oCqUtjwx6PXZjoG/nwv5HrreuTAcvZ22zX5/ZSYJ3TM5Rinqf7M8W82SSWcvMWg
 YSLh9gDvs6Mqwvm5x9/8dVcbnvYrMQ/KeSV3CfLkQVfLHExiI3Dhk7e7l6N5u2Lz2//t
 7q9JTi9j2t3cIjkWN+E3eFFZgLeB1Z94tulowjh6MTjXFfEIUDCNsqWeDKB8Or4vFAv2
 0dohKXmgO1WZpJVIDpYo839ISYtq/0s54FIlTR+binuYt/vRVT5HXVG0FRBUr7DAK/JI
 IASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuVy/dTL0zVi8KB992cYfUvwyuZX5WJTHthmI6rNOT0=;
 b=R80yQNq8gTyWxqRlk5Z5QOthPGoONGobeOQAwrFlRazi39xEBtMKThLXbIL7p/Ru3y
 5WEu8ZRlVtlJsuRkXwUBC6QGbHMpuLj3r6qLh4PNPdHbf3CL4gK693ainDOVpsmMWBz8
 TX4CaYMJ9/QMiJORaHqCaZGmvAhdKCOTpAvSga+gKdtkRoFtGNeyGrpMo/98Bw/i868A
 hf3jV4Z5c/uoBU+4FI1zyb/A/QuMW3M5o2AM7R9tWEOF38bonRmj4Fw+do5Lu2DoV2Wn
 Ic7g5j0kRGumvXjX7KH1CZBNCHaDUkUG8taOOXx8S1EyngYRkP/D2cFqzLhpT2KhzPQp
 Cftg==
X-Gm-Message-State: APjAAAWoDQKRMOWiObMi5zJH2SVY3dnWHpCQNwUJWbSle8rCP/CjSuJO
 kX52vKM4YWnJlT+m+C8g7WbaGhU3GK0BNYx+m5CI6w==
X-Google-Smtp-Source: APXvYqyM4ltTpXf24i1Q7+nxADNrEfPqDVLlQFkkrDB0olL8Fa3A6yeao2uouudfGkdBTJevKJ2kRjPEu3NmeskBU6c=
X-Received: by 2002:a19:3f47:: with SMTP id m68mr1524926lfa.108.1568712205010; 
 Tue, 17 Sep 2019 02:23:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190917085627.4562-1-mail@aurabindo.in>
In-Reply-To: <20190917085627.4562-1-mail@aurabindo.in>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Tue, 17 Sep 2019 17:23:13 +0800
Message-ID: <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
To: Aurabindo Jayamohanan <mail@aurabindo.in>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_022327_575454_F4B960F2 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: palmer@sifive.com, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 at 17:12, Aurabindo Jayamohanan <mail@aurabindo.in> wrote:
>
> platform_get_resource() may return NULL. If it is so, return -ENXIO
>
> Signed-off-by: Aurabindo Jayamohanan <mail@aurabindo.in>
> ---
>  drivers/spi/spi-sifive.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/spi/spi-sifive.c b/drivers/spi/spi-sifive.c
> index 93ec2c6cdbfd..67485067a694 100644
> --- a/drivers/spi/spi-sifive.c
> +++ b/drivers/spi/spi-sifive.c
> @@ -308,6 +308,12 @@ static int sifive_spi_probe(struct platform_device *pdev)
>         platform_set_drvdata(pdev, master);
>
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       if (!res) {
> +               dev_err(&pdev->dev, "no IOMEM resource found\n");
> +               ret = -ENXIO;
> +               goto put_master;
> +       }

Seems unnecessary, the devm_ioremap_resource() already validated if
the resource is available.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
