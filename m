Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F1E11C01F
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Dec 2019 23:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-ID:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:
	Date:Reply-To:Content-Transfer-Encoding:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q5INj5K/FoyzGZq3Fl+iF+CitcbMs72mX5maGlskDRo=; b=FGX/Kg0WV6VhaqG2u0qqlq/WB
	vWBu1wKNjdIWoToM0FsUj9gFI1t5r21O3U7yLzKdTCgiVccFk4FXeQ+szLrsAn1qFle7sBQzTffNy
	OH5wMwWfnnGjF2WxW8K1Z/EK74UWm/jSMvUMnsAoRh8K8/MpqRSsra4FqgCNlMsKMKP5YA08tOHUZ
	x20u4l9YZU9TPtflXmaUbjqon02/GfN9WYV8oe8KuoihDhY+crqS1NGIejWKhD/p1AM1Yn2J9Xjrs
	ppQKrZF99CrttMABPllgSPYzxZCk366hUyMf+4upGdeUD/7OTAVOuduupNwoE93Iq7WAIZ9gldvgb
	vO1zpOvaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifAnB-0008Tf-Pv; Wed, 11 Dec 2019 22:49:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifAn6-0008S9-Sz
 for linux-riscv@lists.infradead.org; Wed, 11 Dec 2019 22:49:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id k197so70747pga.10
 for <linux-riscv@lists.infradead.org>; Wed, 11 Dec 2019 14:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version:content-id;
 bh=q5INj5K/FoyzGZq3Fl+iF+CitcbMs72mX5maGlskDRo=;
 b=MeiVsFdiPFAc4aA9Fp5QodpjTa9d1iLK9U7j394vvMoHJpAVmuN2Y3a9BJ3UUPWt5+
 HKMLOFQpN/heIfaXflEC0NGqrYW2v8lqUfNR2H69h7LS6RyNmVSGnCOtp0YEB2aAKgXg
 Poy0jFUu7bEAvuPb8aqdVDIJS682+v52754AmMJvd30TEbGUD3C2qQOUl3ehrSU6Silz
 6i8Va8FmxLpeMozyM0XgH53XNjsID7mKpf3Qu1+8PnP7Q2ahYuIVS2rYdJwkhiSr53bK
 rGs4YwO5SDcGW2nqyUbX1I1zN/PRLdaZVY4W6B4mJ0usMXLR4szgEhNh6R2evbfZxzHt
 BGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version:content-id;
 bh=q5INj5K/FoyzGZq3Fl+iF+CitcbMs72mX5maGlskDRo=;
 b=FZS6cvLvSHFuhQiyncMEHP0WTRBLkeYUh35jAb8aefIocPYPsEWnrXYmtLlKy2HIMB
 vOqSqUt0cVaFAKTO/cVi9sjX19ojx/HrY2tcmtm57tUrOoUa1A4aYAm0XhTQ4UGwUk4b
 ZP6OWg+T2OfcJDNutI5vjFuEaWUY8UpPjWyS2jZ/xsZTec9zgVJE51XJPoSaMa7fV4ur
 yjb8b3bdwL2gx6HGOKDn6TV0+63TwOCykKtR2rllFwqkCJ520IKmbQ+P0TET2EnfkMTR
 NbFEkJs7iZtMNF4Jw98RknnYQ1qPiBCjEbwV2uZ+0y3jFky8bg5PjF0YiL6+2RF+drZB
 dLdg==
X-Gm-Message-State: APjAAAU9hOj+UxijxFC+Y2SS8g6a2BO1zi9yM6QiyMml/IpCS2HBwH9F
 YUBDbIGP13jiPpb6BuaaToSmCA==
X-Google-Smtp-Source: APXvYqxZv/x8+6gPs+lvJuUwoBOCwIXFbxQfMv+55zj6XHXc7FfvAo4rlYoWWIsIgkOum3WZTwNW0A==
X-Received: by 2002:a63:78cf:: with SMTP id t198mr6714132pgc.287.1576104547592; 
 Wed, 11 Dec 2019 14:49:07 -0800 (PST)
Received: from localhost ([184.105.100.2])
 by smtp.gmail.com with ESMTPSA id h6sm3877324pgq.61.2019.12.11.14.49.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 14:49:06 -0800 (PST)
Date: Wed, 11 Dec 2019 14:49:06 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: =?ISO-8859-15?Q?Andreas_F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
In-Reply-To: <76d72777-b144-0679-1f4c-1136496a5f06@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1912111411120.73923@viisi.sifive.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20191210132146.GF2703785@ulmo>
 <8ff73b97-cf2e-0c91-2764-05ce4c548b06@suse.de>
 <alpine.DEB.2.21.999.1912111751490.32095@utopia.booyaka.com>
 <76d72777-b144-0679-1f4c-1136496a5f06@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1646688419-1576102796=:73923"
Content-ID: <alpine.DEB.2.21.9999.1912111420030.73923@viisi.sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_144908_987281_61CD02BB 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pgaikwad@nvidia.com" <pgaikwad@nvidia.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "s.nawrocki@samsung.com" <s.nawrocki@samsung.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "emilio@elopez.com.ar" <emilio@elopez.com.ar>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "allison@lohutok.net" <allison@lohutok.net>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "swinslow@gmail.com" <swinslow@gmail.com>,
 "john@phrozen.org" <john@phrozen.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Paul Walmsley <paul@pwsan.com>,
 James Tai <james.tai@realtek.com>, Cheng-Yu Lee <cylee12@realtek.com>,
 "jcmvbkbc@gmail.com" <jcmvbkbc@gmail.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "pdeschrijver@nvidia.com" <pdeschrijver@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wangyan.wang@mediatek.com" <wangyan.wang@mediatek.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1646688419-1576102796=:73923
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: QUOTED-PRINTABLE
Content-ID: <alpine.DEB.2.21.9999.1912111420031.73923@viisi.sifive.com>

On Wed, 11 Dec 2019, Andreas F=E4rber wrote:

> Blocks do have names, but they don't always group registers of the same
> kind, as Linux expects it

Linux does not expect that all of the registers in the same IP block are=20
of the same kind.  That's part of the reason why Linux frameworks exist. =
=20
To consider clocks as the present example, you're welcome to register=20
local IP block clock control registers in the local IP block driver via=20
the clock framework.  There's no need for a separate clock driver with an=
=20
overlapping address range, or anything like that.

This is nothing new with Realtek.  IP blocks that contain many different=20
kinds of registers have had Linux driver support without requiring=20
overlapping register address ranges long before Realtek ARM SoCs=20
appeared.

> Just please accept that hardware does not always allow for unique=20
> contiguous memory reservations

Hardware designs do in fact mandate unique contiguous memory reservations,=
=20
otherwise address decoding would be indeterministic.  What they don't=20
mandate is that all of the registers in that region be all of one kind.=20
It's certainly possible to have an SoC with one giant IP block with all=20
registers mixed together.  Even in that case, it is still incorrect to=20
have multiple DT entries with overlapping register address ranges.

It sounds like you're thinking of the difficulties of figuring out how to=
=20
structure the software driver support for those mixed IP block as a Linux=
=20
driver: where it would fit in the tree, what frameworks it would need to=20
register with, and who would maintain it.  Those issues certainly merit=20
careful thought and consideration.  They aren't related to multiple=20
overlapping address ranges.


- Paul
--8323329-1646688419-1576102796=:73923--

