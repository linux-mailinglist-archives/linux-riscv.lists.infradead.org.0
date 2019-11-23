Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1ED107C92
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 03:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMOFIIEu+kUveie8SUXG1MuVANSgZB4naymiRtQh3wY=; b=qeiAhHI3Kny4Fx
	yWFKBGfYLli1jJHflOkj5ejfeYvEnExmjIi+fkNi7GB3zlspnYps0YGv82WDbj0ogXhE28SMtZT6p
	WiK3X5I9dmjOc/2ADfJ2rwkpnB+LaB0FuiBNfArMzXuTZIbg6n2A/k9MihsTbRD4kSpdxkqaJ7e7R
	Imjjysp+f8zl9Fd4I1lCpObAncEaJAEBwpp8Vi/w1ftQkg2jeqYFeXist+HikpxZ1mzhxO27Er2X+
	M98dxV7n7sogeytUzsoceFGzDkEc+uoBaViJqLyHCQk6c8lKYzJsc8WzHV3lw+geSOz0Xywrzc/K5
	MqOzG1dN9eCg6vXEIPXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYLZC-0001jo-6S; Sat, 23 Nov 2019 02:54:34 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYLZ8-0001jU-WB
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 02:54:32 +0000
Received: by mail-il1-x144.google.com with SMTP id q15so9051703ils.8
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 18:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MC3L3+g4fE2SdGIULrCY9R6WE7khneKCXnJPq/KxUlA=;
 b=OEVUvHctm96oZYkLh8AQ27k4G5vrhpBaWHWF+5bZqFtSHED9KWOBdQFIu1qH4rS05d
 5SHmCtE7+IrSy8tUpHyOLsRmS0jPFmDpl3B/d/C/WlNPyIs7woMy+LaDchiqBJQe462C
 0V74fLDiKWGF+jmID3rqVCB/osqNhqEkBUGgCvAPGAD16E9KKJgDddhO1l8hl5pfi7bl
 LFwcvfY4SFRhS/DyZSJNOd35wkeJHQXJ9o4yyDINGMTBwif28UypY07J/Vq9gQeAPO4P
 +RBI2Zho7FXyNCnUg9T6aRBsi/ALhmt0PdyDC20RhCB9rIVW+jfFOipnM7gwdBrPjyyI
 aOOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MC3L3+g4fE2SdGIULrCY9R6WE7khneKCXnJPq/KxUlA=;
 b=oWlZ5SnMm4GitU2Rj1wqHUTHWq69j/4x5WkI598SuMMvDgvjJULxi9+W6dxf5EDgeA
 Un42DAQ4r2H3LeIhEEctkh6PQTwXmJLGHmrB8+OmcpP1wX5W8bOIuWJ81KQnbgCoKCuU
 4mVMq7cL2E764OlWQ1n/AunNkDiD5CXX+GJRxXdMyqz3PcqPFiyfxSmxjU9q/DpeV3ea
 K/7Fhl60aGPQRdjMXW7pRCULjhlTCHHp03RAQ842Z4pdxj8w97MXWoq+H+WwYAazvywI
 1BqU/uDYzUYTyZ6erU2n4wRSIL14DWwgJHk60j5eTaz7I/MqpXScgpSgujVuoBKMs0K0
 J/PA==
X-Gm-Message-State: APjAAAVBiwE9Ym2tYWg4rv7rXs/et/wCR9ngQtsvT0PkothNro43hrlI
 G/D+tqFPdszWyaSbSSFT/oJcww==
X-Google-Smtp-Source: APXvYqy3HVaSl20zc1qqbqMRrnhYCX7IWgu8LVF1nBLwGAVHoyxX5ZpUhuQQBFFD6IU9TZmK6AzqpA==
X-Received: by 2002:a02:1d04:: with SMTP id 4mr17858910jaj.48.1574477670042;
 Fri, 22 Nov 2019 18:54:30 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id 25sm2763492ioe.6.2019.11.22.18.54.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 18:54:29 -0800 (PST)
Date: Fri, 22 Nov 2019 18:54:28 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] riscv: Fix Kconfig indentation
In-Reply-To: <1574306457-6251-1-git-send-email-krzk@kernel.org>
Message-ID: <alpine.DEB.2.21.9999.1911221853330.14532@viisi.sifive.com>
References: <1574306457-6251-1-git-send-email-krzk@kernel.org>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_185431_064717_92809338 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019, Krzysztof Kozlowski wrote:

> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks, queued with Palmer's Reviewed-by: (which I believe would apply 
equally to this version)


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
