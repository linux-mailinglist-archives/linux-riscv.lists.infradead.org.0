Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697C8B958C
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 18:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qtbLZ/gZZvxpS+hQ+XS63nLCG7Npv4f2o9Sn2WxKcJU=; b=EcXMlR9PDy69Y5GFevKnmiI6yN
	ZsdVqTBzS8EGdoQ4DQlB49Qd7dzkNR3GA7axo0CFmgxyZPdqNfYpMpRTXSg9RgrXMgY2sqXK9jVK3
	JyiW/4FWFdfeiAi643W/oYaHA7y+qc+uuLv2cGq7hdpHzx76UDhV7hH6ZEe440gC1RFQsSRdIxzuO
	BeFQ8UkpLS4oPe+AF2NGhDqXyrJ4vd4x8RCS8YTUWmOmkNfTjGC8KpjXkmMNW5sCDjGQtStf9F+n5
	04Mccu3elSL7LlXh4T6QFrRcGL7kR7c3AxkN/xB/mNtrx6rOBY5qSxwIMXEEduUIjJ/W/L7XbMHf7
	H8nYsTpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLhZ-0007OX-O6; Fri, 20 Sep 2019 16:24:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLhL-00076Z-BC; Fri, 20 Sep 2019 16:23:56 +0000
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFE392190F;
 Fri, 20 Sep 2019 16:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568996635;
 bh=SDWrzZuVG71v0J2X6nPbnKE1kFEZUtHXnpXPTYAQdcM=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=Y0NPYxXS5lxvCc5BrOJBS+38DHx4Vw4tGLuccuPjWhQHZjLN1+SP2QJbwffe6Fo6R
 SGaBxYr0YFTOcZZ74KP24FDLyP9h6k+pQ2VXu9tF4gCqFBfBD4s3DyPTPENUcLZ1/t
 wlNhYEZpL/2F2pyw54AFDUqkleli+20BjzwXfEhY=
Received: by mail-ot1-f43.google.com with SMTP id k32so6684828otc.4;
 Fri, 20 Sep 2019 09:23:54 -0700 (PDT)
X-Gm-Message-State: APjAAAX/EEtJPiakbs7XU61h8Q3Dogiiul32wHSvkulQzLfnKq9kUgUb
 2TTclo/m18R2VvxLJPUPPnkVXZbIAl81VjtZjb8=
X-Google-Smtp-Source: APXvYqzVXOyysg9607AyFbe3o2oRNE6mFVRauJhZAfa1N2RVl6I/Rt2f5iakVGo4VwLzm014Px6jKLwO2nAgy6rn4nA=
X-Received: by 2002:a9d:6c9a:: with SMTP id c26mr12313571otr.241.1568996634274; 
 Fri, 20 Sep 2019 09:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190918173141.4314-1-krzk@kernel.org>
 <20190918173141.4314-5-krzk@kernel.org>
In-Reply-To: <20190918173141.4314-5-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 20 Sep 2019 18:23:41 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfQFg5wC-JcHUs8btYJRfpC=NW2FOpWTHkTD6zekzHV0A@mail.gmail.com>
Message-ID: <CAJKOXPfQFg5wC-JcHUs8btYJRfpC=NW2FOpWTHkTD6zekzHV0A@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] dt-bindings: watchdog: Convert Samsung SoC
 watchdog bindings to json-schema
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Matt Mackall <mpm@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, 
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pwm@vger.kernel.org, 
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com, 
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-crypto@vger.kernel.org, linux-watchdog@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_092355_403541_58415B4D 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 at 19:32, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung S3C/S5P/Exynos watchdog bindings to DT schema format
> using json-schema.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Remove unneeded timeout-sec description.

Superseded by v3 (although named v2...).

Best regards,
Krzysztof

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
