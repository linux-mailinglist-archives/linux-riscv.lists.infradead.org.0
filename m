Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90452B284
	for <lists+linux-riscv@lfdr.de>; Sat, 27 Apr 2019 05:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmOsD1lMFmh3Zx2qoVYYQc296i2AF5I+5IG2EYc74ZM=; b=Bwk3iMGw3GiT5j
	kMg+A+F/gm/kzURjiKzkC1Oi4hrowJXmazJnCYAf5jrzfUN07t/Maqq4c2Z3uyBK18FYxpstEJUD3
	MdtkzDjcOwbn2w1TEZHZUCOBFXSmwf+MidGcqyulNjm65D3TvsXY4HWiAXpzmgZ//cO6+mb9TqGV2
	Dnmlg7Nm8Z7r+dw4AI0XhNfml7Kj6DY0alCe9N0TkHIoJiAVZ5FY2bTMbYQnPRDwmvmQ1XhemVVQV
	IvAs14nL95WyVXs9MyAo5pEmhLI7BPChUZH/oWpbm2Ytxi2dovnB6ncCT7Cj3speX8IkLoGz0UFB2
	r0QJbRS/x0vEtarZudjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKE4h-0007cl-GK; Sat, 27 Apr 2019 03:32:27 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKE4d-0007cP-Oj
 for linux-riscv@lists.infradead.org; Sat, 27 Apr 2019 03:32:25 +0000
Received: by mail-it1-x141.google.com with SMTP id w15so8834566itc.0
 for <linux-riscv@lists.infradead.org>; Fri, 26 Apr 2019 20:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=peuEUDy334xbKJ6inCuEX4kMUbZlT8X6mHTrFHvvEpw=;
 b=mB2sHGEPUZXOXgBS3XCnV2O2AknvimY8DOXe8ACDOLXwCKkSQ1CXpRS7w15dwlXhQt
 WF6GKQVvZCaPXUl412S/0YfpkL+qME2qv7RrjqmcJR2IkdNlEy41GFU3lWx4oeuBaSq0
 joNd1fKd09sdwsZUlAyb3foHXYpHds/rXbkgCScLKa0Cxme+qsZLytqeMCn+siMx0zdu
 zoRcLCHN8qaXqgefi3U3DYkqGRT8LUyaQxyUueOjyPngFT9kuefvUjs8M0qnq9tqQiDj
 BBsE9HG8pqhSDOFs6q2JB0E75Sujw7i6Go6oP+MEQXgNV2dpWHwMjkFMCosW7+Cdxa+J
 yNpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=peuEUDy334xbKJ6inCuEX4kMUbZlT8X6mHTrFHvvEpw=;
 b=PKKe93Fyh1WyURLBYY7z+FZLLVanDjowwZX3nA9dOYWwHtGW5GjmCw+Ji+vhecsWAb
 NKUBsoP/wlRcOPrhlPpWbi1wxNKt05b+i5qcSRmczB+fPAeOzAvUmQF+qHR5do8Yx1kf
 yXlqC7vC8/VNrjWd2vwBJUUnUnFDS6foGclWqqV/JFhLs3/mdfL3U7Bpi++B82KGXUVM
 BQe0fYTYwMFnc8hxxGOh72w/g2BIHudpnre29jItcyjeRtVOoDzdY9WbV9gSpwpilzcx
 kzREusu5/nyIaWOIfX3zOKBg5dMzFZA7QMzEneX0q7TZen0CBkUD0rJeGadldFFxnld1
 UW2g==
X-Gm-Message-State: APjAAAXgP/cH9jr3lECY9OLNR9MTfNYgFY8dQ+KAaNKLX3cyElEyUkDK
 epGk3um0zqNLGvXepDyWnCbnjQ==
X-Google-Smtp-Source: APXvYqz5BHffkPjHHo9K9gSW556UBs5Ka/SnjM6zZHQh0LlH4qehKLLtRv8o9ntt7XZ7dTsIOqpOLw==
X-Received: by 2002:a02:b819:: with SMTP id o25mr34991411jam.69.1556335942118; 
 Fri, 26 Apr 2019 20:32:22 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 b15sm9788878ios.25.2019.04.26.20.32.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 26 Apr 2019 20:32:21 -0700 (PDT)
Date: Fri, 26 Apr 2019 20:32:20 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
In-Reply-To: <155632691100.168659.14460051101205812433@swboyd.mtv.corp.google.com>
Message-ID: <alpine.DEB.2.21.9999.1904262031510.10713@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155632691100.168659.14460051101205812433@swboyd.mtv.corp.google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_203223_867871_3D4BC5CB 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Wesley Terpstra <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Megan Wachs <megan@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019, Stephen Boyd wrote:

> Quoting Paul Walmsley (2019-04-11 01:27:32)
> > Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
> > block, as implemented in TSMC CLN28HPC.
> 
> I haven't deeply reviewed at all, but I already get two problems when
> compile testing these patches. I can fix them up if nothing else needs
> fixing.
> 
> drivers/clk/analogbits/wrpll-cln28hpc.c:165 __wrpll_calc_divq() warn: should 'target_rate << divq' be a 64 bit type?
> drivers/clk/sifive/fu540-prci.c:214:16: error: return expression in void function

Hmm, that's odd.  I will definitely take a look and repost.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
