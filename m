Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4637283C8A
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 23:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1J7zfxXlNaCvzDvbuh5IPuQVluIotTXrdV8jDTdaHhQ=; b=W7AF7A75pwb3YO
	PlF8Ltw4ACxt83Q5tRH6jQ31YWdi1If5VVXf9vZ9JFmT8zp8uujdcbeqao8IZsgv+V5UYY6WnMkQs
	Ygs983ZOgCnqlN2mFN4Oia8UEgb/eUvbAoh9t7plbYruyxDB0H6p1ltwnbVHQfnvl3CQKLRBqgfqQ
	C7riyQd2ybhLIFnFet0sb0nb4k7p4saORXMIXaL2eyS0EBKr8RFdKwi8lbsAW9K+wbnTfijTTt5q3
	1YQ/igX12Cr9n5Flf9bvwcjurTDLRuk92Dx42NLYpgeR8F8yqoK1SDdyFc0eBImNAdP18pFiqkpLf
	WQp1cuS8iBGP0Mb029tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv7Ex-0006hD-HW; Tue, 06 Aug 2019 21:43:31 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv7Eu-0006gq-GT
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 21:43:29 +0000
Received: by mail-oi1-x244.google.com with SMTP id w196so47521442oie.7
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 14:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=vhe3NIF3L0LjxKZNqf8InaUKQ77kVe6kvjOAn65IGds=;
 b=N6BSRdRniocyn4ejlcjwILFWDY5joDFEbRQhIX1AV3bb0FBmT0j9KxUwDXMLa++MZs
 k6h1ebPWOtIsRz3NyUJPFrWYFFSMrBfHbu7E0A0KAwLWVPEXCD5plJjT63hJZzL3fxkt
 0yGnwzx1sYkDaa71qYxpu9NQ+QsI7pM68XvRIndMRxUXHCIqf5cPo+e3lRuARXbeyiVV
 736nExQHV6Kj2t1IUCEAAagart90x4gg/BeRVdQ5n0OaSBrQan67Z1S/vbmTVNgUmQIk
 sRWsPm+iIlVEXks8xrRmyl7uoe4YSOmZXNLgrQS0eddPTf0aawpGHZaP+O0PVSuFqe7f
 P/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=vhe3NIF3L0LjxKZNqf8InaUKQ77kVe6kvjOAn65IGds=;
 b=jFXSrmd9SQiJQ6W4wxCG4m8KU3SIabAOzy+88X/ZLKDtIq8yrO/uKiiqa93bge0e+L
 nkRUa0eeZVjAEFBXnKT7GYQN4pE/yBEVRJE5Kmp5EY/AnsAsHXe60K7WewlFGuGI4k+M
 7oOr2mPGQ5TyZBGnsPutf2E/KvLlI0HhLJn8vP4Sm25HTh+tYzksFMjPysaI78YYaIrR
 6kYNG8RfHON2N0tlJNjEe4r+wm36754CAc2LZ9AQFRi5kfP7t72w1ngq3hcStzleuo/y
 iawJzzlGVLek40VKTxKbXgHV8WywiJ+8t5Uuz0gYbAUKVftG4BVajLvJ1ZNLdbLBcuSs
 BqrA==
X-Gm-Message-State: APjAAAWPTBQF1AH4PIP2X0NdhHF8nQ7uECN/Cr7EN8R2J1/BADt6GU+w
 68lwR+sm4tJQsTJL/8JJUoQwfw==
X-Google-Smtp-Source: APXvYqyktUJakypJR/fPYCChZtne19bHMs3XPkuT+lRzZxUNjA+2z6Ue4aq5O1qokA7WMUjW9h+gzQ==
X-Received: by 2002:a02:c6a9:: with SMTP id o9mr6748787jan.90.1565127806394;
 Tue, 06 Aug 2019 14:43:26 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 d25sm73339652iom.52.2019.08.06.14.43.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 14:43:25 -0700 (PDT)
Date: Tue, 6 Aug 2019 14:43:25 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v4 4/4] dt-bindings: Update the riscv,isa string
 description
In-Reply-To: <20190803042723.7163-5-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1908061443140.13971@viisi.sifive.com>
References: <20190803042723.7163-1-atish.patra@wdc.com>
 <20190803042723.7163-5-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_144328_555214_B318C6A4 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Anup Patel <anup.patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, Enrico Weigelt <info@metux.net>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019, Atish Patra wrote:

> Since the RISC-V specification states that ISA description strings are
> case-insensitive, there's no functional difference between mixed-case,
> upper-case, and lower-case ISA strings. Thus, to simplify parsing,
> specify that the letters present in "riscv,isa" must be all lowercase.
> 
> Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Thanks, queued for v5.3-rc4.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
