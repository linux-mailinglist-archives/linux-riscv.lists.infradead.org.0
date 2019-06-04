Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABBE34A92
	for <lists+linux-riscv@lfdr.de>; Tue,  4 Jun 2019 16:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ayCZiCN/rF4sAQvgX5qc57+mYPk1ohfYuDA3GE0Ix4=; b=hSKn950rVutDSD
	2BJ8ipgBG56XRxPe4V5tuM2c7RSlorpqMTmQiDQhAftqg0rDSw0UsWjiQIAOk9zm5u7e0VVR8Dhn3
	oM4ZHvqMHhEvc6sejzpf9MrELuFbUiCAnrNETDwQiq+j4jo2kQmlABvG4rb9maE6sigg9ZQzRTDeM
	2rYTatk3K8soo0geoYKb0P+avMb+Q2Sza9fOQwsmUOskO8SBwvlLPwUhNVP+Er/nGDOWYoo+uK+Zc
	K3Ur8PPcGy9sar/Ind8EYqX/nHaXTu21e953qb4F+QOlock7sPyqjZiJMkDAy1vFqHZA18ccAXL9a
	PoCaUb6+dqNQC9/vAo6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAaa-0002OP-1k; Tue, 04 Jun 2019 14:39:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAaW-0002Nn-L9
 for linux-riscv@lists.infradead.org; Tue, 04 Jun 2019 14:38:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so315280wme.4
 for <linux-riscv@lists.infradead.org>; Tue, 04 Jun 2019 07:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=8yVp8LW/5tvDYIdw2ZjGi4ruSvPsT4gaU3KQr2PELI4=;
 b=A7Kqt8FA/PZlIOCWpIHikU1GTW15SgXKBI4w+GU2YVXQrsV5zxKoLF/CNIHmi/wveq
 JjUw4ZVMXLxXu0efAKQUqxDpWj6q6qWrZx3Ti20klLgsB/Rv8hNLgRL1R23KwIhPM0Vz
 hQvfg8kFzMZ2Gm6kl74A7T/JIsM55Jy6eBAGX3dVxxuv3o7b4fvenKXHlAzfic5292ip
 LSSA9xjv4P2N+g4wXhCwkoP1NYwvmzrsuKWHDOf3UGYqFuBqHc2pKg787buWRZi+hXsO
 HNkPeJ/Q41f4bF4uDFj4XYlrQuEuuvtI7SePznEdEu5Mnx/cFCyyBa8GskLwLc/FFQtr
 zgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=8yVp8LW/5tvDYIdw2ZjGi4ruSvPsT4gaU3KQr2PELI4=;
 b=gaG7586XsalJqzWMIVyOGcEwDgf6Tg/E4oeMzRTx4t0MAgm/P3ELl9heelS3kI+/FQ
 Dw4bxkj23Hauj/VUoggRFjrhOCeylY2p2Xpd5WlkA4h9Rh6n43vxCNvdJHNSfICfcPet
 hvDjVgUFYOYH/vOrdbc36Be6ViheaooyXyDt3oA9Bx3wP5F7s7NEme5HE4ZwpKfB9phF
 he1b2vutqBUqW4eBcKlLxNSUj4+xrliJU3moS0cS1sZHMVTQZW/HOwIJXUtap1pBC9Ha
 Zqw6tPt80hi/D7PaHZyKhLwOURIjFvmzgLeMBp6E0pOMb44h4WLt1/2SiPzFIs0fLHLA
 dQ6w==
X-Gm-Message-State: APjAAAVsGwzzF10niOXpzK0uDvKP5f7fug1R7PA5kpZn6GZuzUHX+Dye
 41gGVCKc4hXndUGLFeanbmxwfg==
X-Google-Smtp-Source: APXvYqxRW4nwf4GpDLyd87BakAfZ89olYzNbTVRR1tlK/pY6mlbd9mILPL7WAvRnQL8m2ze14qkPFg==
X-Received: by 2002:a7b:ce01:: with SMTP id m1mr8827610wmc.1.1559659134003;
 Tue, 04 Jun 2019 07:38:54 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s14sm15595662wrw.10.2019.06.04.07.38.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:38:53 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 4/5] riscv: dts: add initial support for the SiFive
 FU540-C000 SoC
In-Reply-To: <20190602080500.31700-5-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <20190602080500.31700-5-paul.walmsley@sifive.com>
Date: Tue, 04 Jun 2019 16:38:51 +0200
Message-ID: <86sgsph0uc.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_073856_693279_365D53C4 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 ShihPo Hung <shihpo.hung@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun 02 Jun 2019 at 01:04, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Add initial support for the SiFive FU540-C000 SoC.  This is a 28nm SoC
> based around the SiFive U54-MC core complex and a TileLink
> interconnect.
>
> This file is expected to grow as more device drivers are added to the
> kernel.
>
> This patch includes a fix to the QSPI memory map due to a
> documentation bug, found by ShihPo Hung <shihpo.hung@sifive.com>, adds
> entries for the I2C controller, and merges all DT changes that
> formerly were made dynamically by the riscv-pk BBL proxy kernel.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
Tested-by: Loys Ollivier <lollivier@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: ShihPo Hung <shihpo.hung@sifive.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
