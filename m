Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76B3A95C7
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 00:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7suvUvAj8taleU8+RzMXeTkj8Mlvqk1s4X91ZbxeoUI=; b=EMDVOKk1kUgscQ
	jFoFcgPI6tlaz6ipn5uix3iFQiVZ+8BduLwWp9MyLPsIsDToizjEXr8/wHcXiNUU7CuSAInVXTVM3
	7krYqWVjzws6xN53K3SPYzf0vvPVvZsbwjeoojt2+gc2+PiPR+xxlfatGAHyKfFul/1QifzQzO9oY
	fIHb+z6JjDl5sy8Qdjxv64jmNFBDk806eZPkSFekHAJG7L9YJESCiiG/EMaI7NPbx6JfRai1nF4/d
	nFNtbq+vVq2BLMZ7+hlLzMAz/W1WWY8kcFbyAKdqKkk6gB/OWjmkU1pkRKkpinaFlDscKLlL1iy2t
	6fzYh0N1PcMvH+efcRjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dUl-0002Km-Qb; Wed, 04 Sep 2019 22:11:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dUh-0002K6-O7; Wed, 04 Sep 2019 22:11:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so247919pfb.7;
 Wed, 04 Sep 2019 15:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g+6XpI5kpbmJFvx+kn5E+7tLpc2ZjDJn4kNPVnStE2E=;
 b=e1kzHrrhLu3H38c3RIvFv3KFtEH9I0ixuhaalyVNjtJ9R9aUU9517BP85uBp4c3dZa
 6DzLL79w3ZVR5oUpFF/Hw+HQ2RxOZQDPC4namhjt2TAkIKilTLiQFyR+o1Yj1In2zXDy
 9561wWBcfEh/Zda6ZBhNy8ZYUbEjDEGuuVxdntn6eA19ptbxtScB4jIDbgcIcsKHJIZ1
 6opBQ9JuYPHFhzVctBZsgYo4yGvrC/82132vAGrfZQnOnHxDOQVUV1WH8OPdd1L0DUNY
 WmBC0oBFQP6xLAELnWxBOYfrAUFMrzCd0Yz/tso+7YQkzY4u3U6ofekBVa0W6M1OSYGG
 qZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g+6XpI5kpbmJFvx+kn5E+7tLpc2ZjDJn4kNPVnStE2E=;
 b=FmkQwZqB3etJZ8xYNe5jt1i82Yx7W6Vq1tA1HZVtwJ1jKnXW6UMZkjsVRLh2RLDprx
 jzeShQT++3VP24+klbULB5A4ellDDG+J8u3hdAyZ/BAwUVzByNPClSmHoQgThA+YvfeQ
 gpbt4tdQaTtpZ3HgRTSuN3KlwVlhII/jcAHHru+vus8O335cVwYOKU2oD4hy5mtnd7t0
 XV44V/LbYL7tNmL3n0+nERx+LSiSAMdoQKJsxDgsCZOiFyGW5Gm0dctY1JqlajA62jRe
 JJJ1YcKv+nOKZVplmaS0WOv0a3Ygv1R3LVBel8Vq+zO6jJzwTrSgIIITR2FBz539N4OL
 dX4w==
X-Gm-Message-State: APjAAAXsqL2aSmhB1P01CqFE6XcmBQ/AqrZS4BfX6WLmQL3iBKQo/Xp7
 Cf3ogly9LiuWpIOdnttlOeI=
X-Google-Smtp-Source: APXvYqzpBWtpxdm0bH8OBicigR1zPs24mRFeZDv7CLPJ6+TDtcXf9xj9XjfGvwWIe6hpB9xzS3uiMw==
X-Received: by 2002:a63:7a01:: with SMTP id v1mr330595pgc.310.1567635073535;
 Wed, 04 Sep 2019 15:11:13 -0700 (PDT)
Received: from [10.230.7.147] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e192sm55781pfh.83.2019.09.04.15.11.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 15:11:12 -0700 (PDT)
Subject: Re: [PATCH -next 07/36] spi: bcm63xx-hsspi: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>, broonie@kernel.org,
 rjui@broadcom.com, sbranden@broadcom.com, eric@anholt.net, wahrenst@gmx.net,
 shc_work@mail.ru, agross@kernel.org, khilman@baylibre.com,
 matthias.bgg@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 avifishman70@gmail.com, tmaimon77@gmail.com, tali.perry1@gmail.com,
 venture@google.com, yuenn@google.com, benjaminfair@google.com,
 kgene@kernel.org, krzk@kernel.org, andi@etezian.org, palmer@sifive.com,
 paul.walmsley@sifive.com, baohua@kernel.org, mripard@kernel.org,
 wens@csie.org, ldewangan@nvidia.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, yamada.masahiro@socionext.com, michal.simek@xilinx.com
References: <20190904135918.25352-1-yuehaibing@huawei.com>
 <20190904135918.25352-8-yuehaibing@huawei.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <d36f7e5f-d629-dcad-61c5-fcf896cbd91e@gmail.com>
Date: Wed, 4 Sep 2019 15:10:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904135918.25352-8-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_151115_813615_9CFCD681 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 9/4/2019 6:58 AM, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
