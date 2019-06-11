Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9379D3CEB3
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 16:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE+L8K+fdQtcl13rbAdR8cD8s3ctmgga89K5eeUNQaI=; b=Xnapp4nwjmmf3g
	8kyMNPaCs/TKTRdF5MZ3bPTMKy5RBUYmeOjBDiIadPqK/XF4wS8+4/EkjhtP058OY1i08H0wG7Cpj
	H1nf1HGwjgu8lg4aDIaa8vNBN8A0Pc7ON0YpG3Cl2IoPUTengq4Pecfmxi5rH7S9+wZTqN9jNXFmU
	nYc20paOjC3kmYue3wVXCFjElv/n0D8LOMcEABX80h+hMAsz6VK5MPIXeYXzQLLAx14GE3HD6nSUI
	hZRkfVQvvgMfPd/ObfIUBS/cBDgnaDY7ox6I+A8FgifjjNd97EhTwHYhwV921yik0ZoQprWsupG32
	bWCl2H3SDQYWaIHa6ahg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahm6-00059t-BZ; Tue, 11 Jun 2019 14:29:22 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahlx-00058b-Na
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 14:29:15 +0000
Received: by mail-ed1-x544.google.com with SMTP id p26so16378455edr.2
 for <linux-riscv@lists.infradead.org>; Tue, 11 Jun 2019 07:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=EcfTiCsffQkaI+Cy4Vw69CL5IwRZfczcRgXiPSVSIEU=;
 b=XIxL3vanV/BoGlCosN7UlsPccmg8Ri4Z8jWnddxaVhRqyTSA97xSsXt4jxSXSMip0O
 HpFjrqn/vPjrVZMT+GeJYFnV9HKUuOHcxOOmIXtwvxxVEptP5nNbKMHcw25Zwbpt5xDk
 O298v3Df7onxgjfwyNZNwkBvKJi1f4y7FYoa0hEYG65ZtOyDeMsOfaKSZO+JsanpC834
 S2zaSeOhqvsaAfk0Jujd0TFA+Xl9+PKsQ7dWYUFQtH6acylZeup5URZAeMT6WhYZ3HwX
 kiZI3rRCQsNnIm8DqX7+/EL9zhGJPvTFhsGeDF07K2fy8wWla6yffNDEYa6lSQQxTU92
 5DWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=EcfTiCsffQkaI+Cy4Vw69CL5IwRZfczcRgXiPSVSIEU=;
 b=beB/G6XDKIGfnIEkmuLjCEAAiD00ie5cPE1dBKFQZFgDTM10zYBiOeHx03Pb1cZDcl
 xWraavOv8tvfo63lT83wBed357SeRTXAEZxTn+dHc8RT86QGjnmg1wa07+MjxWR/aGoe
 XPffe6XAOSsOPN7eI3/HUhj47xvcVPzAM4w/iaBR/oD9NcvMznqlVX9HP2QOxFwjJX09
 rUyEyf7i+bVOFqj2Yy6AProq+LYlXiTbRqQDICPLb/SIvIsgFgLj0eBXQEgfNYjGbyKS
 idJuEPuGbqwXZZON9yIsPaZ9rdMJ1mW186VXgLGEQ5bDzFaYv4bOTDcJb/2QWXGh80JK
 cbjA==
X-Gm-Message-State: APjAAAUV+9ahgzmYuYJpckBs9XRvqq9cT+fxOGW1jHX8/JBZiHfK66gc
 4+QLsho3lVrf4vdV/3hGPXqq7g==
X-Google-Smtp-Source: APXvYqxbHgB3hqxZayzzwYf//1JUbrAUHjHKk5IFJ5cxpjXezsvGZFi9XeOdup4uWumqb5EpI3IoQA==
X-Received: by 2002:a17:906:e203:: with SMTP id
 gf3mr45163746ejb.210.1560263352423; 
 Tue, 11 Jun 2019 07:29:12 -0700 (PDT)
Received: from localhost (mpp-cp1-natpool-1-037.ethz.ch. [82.130.71.37])
 by smtp.gmail.com with ESMTPSA id s11sm1250132ejo.51.2019.06.11.07.29.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 07:29:11 -0700 (PDT)
Date: Tue, 11 Jun 2019 07:29:10 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Nick Hu <nickhu@andestech.com>
Subject: Re: [PATCH v3] riscv: Fix udelay in RV32.
In-Reply-To: <67bfbb11e64273427b125528a4e2bc83b5efe70b.1559199430.git.nickhu@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1906110729030.16050@viisi.sifive.com>
References: <67bfbb11e64273427b125528a4e2bc83b5efe70b.1559199430.git.nickhu@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_072914_042976_AC991BF6 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: greentime@andestech.com, palmer@sifive.com, linux-kernel@vger.kernel.org,
 hch@infradead.org, green.hu@gmail.com, albert@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 30 May 2019, Nick Hu wrote:

> In RV32, udelay would delay the wrong cycle. When it shifts right
> "UDELAY_SHITFT" bits, it either delays 0 cycle or 1 cycle. It only works
> correctly in RV64. Because the 'ucycles' always needs to be 64 bits
> variable.
> 
> Signed-off-by: Nick Hu <nickhu@andestech.com>
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

Thanks, queued for v5.2-rc.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
