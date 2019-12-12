Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBEA11C608
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Dec 2019 07:41:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s+aJTCUgusaRsDVXfMPgIP23JIHEx8Qilxwy6hzS8zM=; b=qqeO594zkJI1fE1ljrRJoy5ZV
	OE8tK5d5EkevM8rkKzQ4Cb9LOr1mBNLIeiqvcdVFXL4QihwsxEn3ULZjmpMbskdqq/A1hPAPF0BoM
	ANK0qCD7xtYIGpdtxQHLLy2LIZJ5VmCuScrQ26yCQ1TbC5jjK3i0l7eArlKs/zKzERKUiC31GtZN5
	SCggYmo97Q7GFegbRIiVUiBNF03B+Zm8krX/mjjj6YyWEvHt89iom/TLiUctMsfjHtVdKC1zp98uV
	bX2cLusf+QIPez7y936RGM9WJ5jD857ZZi8FnjDFpjBhInLM8T7gp0IDxGbr4wVAIw7cnwxoRNRvF
	zlNRkrUNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifI9g-00089m-V3; Thu, 12 Dec 2019 06:40:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifI9c-00089B-Vh; Thu, 12 Dec 2019 06:40:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so1371544wrm.11;
 Wed, 11 Dec 2019 22:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s+aJTCUgusaRsDVXfMPgIP23JIHEx8Qilxwy6hzS8zM=;
 b=Y7mNp7QxWpVAjYCPZ2VVlipKzYJBF5MPE2QZ15L3m2Xz0I0i7xY3Dorz2tTTSEGRuV
 tUMP6sp+XTuFzms7hMAoZz/519946/sazHi54/D7XeQR2mq1AWBTIlWS/gXeMCz0XYq/
 MZq3wlFbBx4KlCBaWVVcYRd+XsEHAGGzob+dgKweVJVUwH1GxIJPgopkg4/J/X5/M3/W
 3Jib/i+ZqcWC2KnAslMr/bch3FKwZHaPZlD2r2k8aJ1+zv9iwqfkhuKX792UdTLq6mZo
 +F2HssqUgt+b9cKiNERtge249HzOv+P1hI/E1zWTuQl/2dFvKqOkW/Ho0qh7xtF6LzsU
 dSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s+aJTCUgusaRsDVXfMPgIP23JIHEx8Qilxwy6hzS8zM=;
 b=nZi3fG1VnzlDNcrhwHybimUmmyAhM97OSnHNER6mdw5LeXpSPokctMTKPlSl7mstSq
 UAxwNUNyTfU1wqtYHmw8cVJrvwJjxHr1v5ciN8JVpKVG6JR+jKnXXAeZDHkCCNmgXoqn
 pwjDx8n2WND8Xgu+avqBNCeO5qws316w52deB/GptMFFvoqFGMi65ejFgcxBfCbSn6Js
 hLumkDyjkGobDiG8ObqlOWJpJev5UupurG9O6MTf0TrQwVsWpJNKV13NRAVKGxe84k9F
 EW8QII1Uzl14wu8HK0NevysQJLJRCHZrsmUrr3RSj9syzq4WI0JLOejRHgs1K8v6dMvi
 j1Vg==
X-Gm-Message-State: APjAAAWcfzY+tclCRs6NMUdvsXNJZnFSoSbpsDqwMUpOkeOt2jnI8yKR
 8Q0dy/mXkpBVUTm8dx97MaM=
X-Google-Smtp-Source: APXvYqxgJ3OJafYk4sxoGzAfpz4feTJajq6KB5f8rPQFTOnEdNQzzTuwazOcn4ALSfdXbWFflqqB+A==
X-Received: by 2002:a5d:6ac2:: with SMTP id u2mr4325465wrw.233.1576132847750; 
 Wed, 11 Dec 2019 22:40:47 -0800 (PST)
Received: from localhost
 (p200300E41F04A60076D02BFFFE273F51.dip0.t-ipconnect.de.
 [2003:e4:1f04:a600:76d0:2bff:fe27:3f51])
 by smtp.gmail.com with ESMTPSA id r15sm4872302wmh.21.2019.12.11.22.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 22:40:46 -0800 (PST)
Date: Thu, 12 Dec 2019 07:40:45 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
Message-ID: <20191212064045.GA2951358@ulmo>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20191210132146.GF2703785@ulmo>
 <8ff73b97-cf2e-0c91-2764-05ce4c548b06@suse.de>
 <alpine.DEB.2.21.999.1912111751490.32095@utopia.booyaka.com>
 <76d72777-b144-0679-1f4c-1136496a5f06@suse.de>
 <alpine.DEB.2.21.9999.1912111411120.73923@viisi.sifive.com>
 <1a415db0-9313-72c3-e02c-0f3b8e0e5da0@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature"; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline
In-Reply-To: <1a415db0-9313-72c3-e02c-0f3b8e0e5da0@suse.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_224053_046702_A44A687C 
X-CRM114-Status: GOOD (  40.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
 Paul Walmsley <paul.walmsley@sifive.com>, "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
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
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
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


--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 12, 2019 at 06:38:31AM +0100, Andreas F=C3=A4rber wrote:
> Am 11.12.19 um 23:49 schrieb Paul Walmsley:
> > On Wed, 11 Dec 2019, Andreas F=C3=A4rber wrote:
> >=20
> >> Blocks do have names, but they don't always group registers of the same
> >> kind, as Linux expects it
> >=20
> > Linux does not expect that all of the registers in the same IP block ar=
e=20
> > of the same kind.  That's part of the reason why Linux frameworks exist=
=2E =20
> > To consider clocks as the present example, you're welcome to register=
=20
> > local IP block clock control registers in the local IP block driver via=
=20
> > the clock framework.  There's no need for a separate clock driver with =
an=20
> > overlapping address range, or anything like that.
>=20
> If I throw random code into drivers/mfd/ it will not get proper review.

I don't think that's what Paul was suggesting. MFD is something that can
help in these cases, but often isn't required.

> We rely on clk drivers going into drivers/clk/, even if I could
> theoretically register clks also from other parts of the code base -
> which will then require complex Kconfig dependencies or #ifdef'ery, not
> to mention the nightmares of collecting Acks and figuring out through
> whose tree which patches go.

That's a process issue and isn't actually that bad in my experience.

> > This is nothing new with Realtek.
>=20
> As this NXP patch proves. :)
>=20
> >  IP blocks that contain many different=20
> > kinds of registers have had Linux driver support without requiring=20
> > overlapping register address ranges long before Realtek ARM SoCs=20
> > appeared.
>=20
> Hey, you're the one that's trying to pin this on Realtek, not me!
> STM32 RCC is another example I know, also Allwinner, etc. My point was
> precisely that this is - for good or bad - a rather common scenario that
> we need to deal with.
>=20
> >> Just please accept that hardware does not always allow for unique=20
> >> contiguous memory reservations
> >=20
> > Hardware designs do in fact mandate unique contiguous memory reservatio=
ns,
> > otherwise address decoding would be indeterministic.
>=20
> Are you not understanding what I'm saying or intentionally gas-lighting?
> A contiguous memory _reservation_ is a range of memory like <0xdead0000
> 0x100> that the kernel (software!) blocks other drivers (software!) from
> reserving. This has _nothing_ to do with hardware address line decoding.
> It's still about devm_platform_ioremap_resource() and related APIs. Do a
> `cat /proc/iomem` to see, e.g., "98007800-9800781f : serial" reservation
> in successful case; as mentioned by Leonard, an unsuccessful reservation
> usually causes the driver to fail to probe and thus be unavailable.

I think what Paul is saying here is that even in hardware you do in fact
have these contiguous address regions assigned for each block. This is
just because you need to have an address decoder somewhere that forwards
addresses from the CPU to the various IP blocks. These address decoders
work on contiguous ranges, so by definitions registers within the same
region go to the same IP block.

> >  What they don't=20
> > mandate is that all of the registers in that region be all of one kind.=
=20
> > It's certainly possible to have an SoC with one giant IP block with all=
=20
> > registers mixed together.  Even in that case, it is still incorrect to=
=20
> > have multiple DT entries with overlapping register address ranges.
>=20
> Says who? Since when? Can we maybe agree that incorrect !=3D invalid?

We always represent each hardware blocks with one device tree node.
Given the above, if you have multiple nodes with overlapping register
ranges, you're describing one hardware block with multiple nodes and
that's when these kinds of issues come up.

> > It sounds like you're thinking of the difficulties of figuring out how =
to=20
> > structure the software driver support for those mixed IP block as a Lin=
ux=20
> > driver:
>=20
> Yes, these are Linux kernel mailing lists and patches after all... I
> don't design hardware, that's why I said we need to live with the flawed
> reality of the actual hardware we get.

I don't think the hardware is necessarily flawed. It might not be
structured in a way that reflects the Linux kernel's subsystem
structure, but that's quite common. That's not a problem to solve at the
device tree level. The device tree should describe the hardware. It's
the job of device drivers to make the hardware available to the kernel
and its subsystems.

> > where it would fit in the tree, what frameworks it would need to=20
> > register with, and who would maintain it.  Those issues certainly merit=
=20
> > careful thought and consideration.  They aren't related to multiple=20
> > overlapping address ranges.
>=20
> Oh they are. Overlapping address ranges of DT nodes are a _result_ of
> unexpected hardware design involving blocks not clearly separated the
> same way as Linux subsystems (to distinguish from "frameworks") are.
>=20
> The DT should describe the hardware blocks as they were designed, but on
> the other hand, we need to describe it in a way that Linux drivers can
> actually bind against the relevant parts and that those drivers can
> operate efficiently.

That's exactly where the misconception is. DT should not at all be
concerned about the operating system's internal structuring. While I
think the way that Linux is structure is great, not all operating
systems may work the same way. Other operating systems may not have
separate frameworks for clocks and resets. So if you start writing
device trees with a specific operating system in mind, you're likely
going to end up with one device tree per device per operating system.
That's not what we want. One device tree per device, independent of
the operating system, that's the goal.

>                      There is no ioremap-all-regs helper that I'm aware
> of, for instance, as that would result in __iomem base addresses to be
> stored per reg entry; compare that to just one for an overlapping range.

>=20
> Example:
>=20
> clk@f00 {
> 	reg =3D <0xf00 0x100>;
> }
>=20
> reset@f0f {
> 	reg =3D <0xf0c 0x4>;
> };
>=20
> This should be a valid DT example today, as long as the clk driver
> doesn't mess with the reset register embedded within its range. In this
> case they can't both reserve their ranges as they would mutually cause
> each other to fail to probe, depending on probe order.

It's certainly not invalid DT from a syntax point of view. But that
doesn't necessarily mean that it's a correct description of the
hardware.

>=20
> As I wrote, turning this into
>=20
> clk@f00 {
> 	reg =3D <0xf00 0xc>, <0xf10 0xe0>;
> };
>=20
> reset@f0f {
> 	reg =3D <0xf0c 0x4>;
> };
>=20
> is helping no one and makes things much more complex, especially when
> the number of carve-outs grows or is not predetermined, as I noted about
> some of my cases. Thus I disagree with you about the overlapping ranges.

Again, you're trying to split the hardware up based on Linux' frameworks
rather than by the actual hardware blocks.

> DT needs to be designed forward-looking rather than just around the
> handful of registers we might read/write today, not just to relieve Rob
> from excessive reviews.
>=20
> My solution was to do
>=20
> syscon@f00 {
> 	reg =3D <0xf00 0x100>;
> 	ranges =3D ...;
>=20
> 	clk@0 {
> 		reg =3D <0x0 0x100>;
> 	};
>=20
> 	reset@c {
> 		reg =3D <0xc 0x4>;
> 	};
> };

That's starting to look more like it. But still, why even bother with
the separate clk and reset nodes? This block clearly provides both
controls for clocks and controls for resets. The fact that Linux has two
separate frameworks for these types of resources is secondary.

The right thing to do here is to have one driver for the whole block and
then register its device with both the clock and reset frameworks. That
way you don't need two separate nodes. You only have these nodes so that
you can get two separate devices that a clock driver and a reset driver
can bind to, respectively. There's nothing in the frameworks that would
prevent the same driver from registering to both frameworks.

In other words, it's perfectly fine to have a single device/driver be a
clock provider and reset provider at the same time.

> https://patchwork.kernel.org/cover/11269453/
> https://patchwork.kernel.org/cover/11269971/ (and more in my tree)
>=20
> which clearly models the blocks and shares a syscon for most children,
> other than pre-existing 8250 UART, I=C2=B2C, etc. drivers using platform
> helpers such as the one discussed here.
>=20
> What we lose with syscon is reservations, i.e. /proc/iomem neither
> showing the full syscon nor the drivers using parts of it, unless we
> explicitly reserve the memory (syscon does the ioremap for us, so no
> need for this devm_platform_ioremap_resource helper there).
>=20
> Also please keep in mind that we actually want to get to the point where
> new systems are booting and usable. At least in the Arm world we do have
> hardware at plenty to boot Linux. Dying in DT-beauty then is
> counter-productive; we also need to come to timely compromises for not
> blocking other work. clk drivers don't need to be platform_drivers like
> here and thus can coexist easier with other drivers (e.g., syscon
> without child), but I clearly contradict the generality in which you
> appear to rule out overlapping memory ranges, be it for siblings or for
> parent/child.

I think the common misconception that we need separate drivers for each
framework is what's counter-productive. If the same device provides
different types of resources, then we should just have one driver
register with whatever the frameworks are that expose these resources.
It becomes really quite simple once you shed that misconception.

Thierry

> Hiding overlaps in an mfd driver does not strike me as better than
> openly declaring them - if the mfd components are not dynamic, then I
> understood simple-mfd were the way to go, which requires some reg(s),
> which then for convenience may overlap if there's no clear boundaries.
>=20
> Regards,
> Andreas
>=20
> --=20
> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
> GF: Felix Imend=C3=B6rffer
> HRB 36809 (AG N=C3=BCrnberg)

--wRRV7LY7NUeQGEoC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3x4OoACgkQ3SOs138+
s6EBqA/+JbdIXKcIssJVULIdyXTA4TmxK1+uOhFuSTcGRxDWOhI6yxfHMwuFrFVt
JFLB8/PcrgkTcPVDUMQNWK/J3K00ucC1GDdMvejK8GzhpMM2vzgBuYFVkAKBUCzb
PtaC1FF7avJNEnsRpX0of3NXX1Srp2xTyg48w3lyvSGeMX8F1VeHfHdDkyC+u4vU
K2B2AgFMioO8YNK6kRSSCAfD3qXJ7CeX0pYJnAaOrVaThHuh02vbLP9nja0FD7sK
pDmH4oQNqOrZviNLEuih6k+euYDSwvPwjkO+hPTkfXOusnbj0yETugNYY4cuyEZR
dWlylfO9I7B+hRSL0XzLvfk/lXhoj9x3PjjCoy3ejF1SyRClf/NCfxwj/PbqL8JG
fo4FWFEux+6Rq65ZpoOL3VzT2qhbk4lbRyoHnbu2469tZB0//0voZK3Y1ZWc+IBV
HgXjLEwaHIDMAvFLjCklYnCBsX6ppxZc/+TEZzMgSMc1wI/kgtgSgTsnCI+yLM8Y
AFElTerO4ab/7oQThj3THbH6LB99JDK5LcZ0FOb7NBUeQCng1BW+HoSWidu3h4lU
JYd+rtNcDnzJWZYOKdrrUHK/goV9tV1u0FNL4T2065VDZGO/c5mieTHVqSc+R/gs
1mWmSPvUExNGyLKLv8iuDje+I3Pgm2hqYqoZBAzh+Vo9H5/VbqM=
=PPf2
-----END PGP SIGNATURE-----

--wRRV7LY7NUeQGEoC--

