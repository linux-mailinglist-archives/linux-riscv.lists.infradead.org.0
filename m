Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9C3FFC2A
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 00:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ucbh4JLequ2yD8BpVew6zquKE0FYZgPfV2H6+4nSj9w=; b=ZGG3hPnQI/4Ch+
	wSQbmlzlTDu3kmZ8sq1h/dE/hOyLWJWHb/K+udw8L9FVYtnqUcP1UKndD0Wug2Kc2BsL850q6fLvN
	7YC2CJju9gWUFpd3zDBSYXPYgd9vcYmsxylGVkix1E4BakLFi7ElzgTK8Bo9YsyK/7OfeLsstzawX
	qBqNj+uZpFsds21zij4htYVHnxIPetaTYyu/boxlkRaT82S09o13AS0Wg+q5t98HW81WYraQsAxE6
	4w4Kjp5OKOm7jFfz5fxdmv1ST8McQ9s3DpUAc0h7g6P9ioL6x45v0jCa+uXPLU3/D5+vPvAWIwiIt
	HYNynkAUQxmMIgU8RCSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWTkm-0006t3-TL; Sun, 17 Nov 2019 23:14:48 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWTkj-0006si-RJ
 for linux-riscv@lists.infradead.org; Sun, 17 Nov 2019 23:14:47 +0000
Received: by mail-io1-xd44.google.com with SMTP id x21so16658936ior.2
 for <linux-riscv@lists.infradead.org>; Sun, 17 Nov 2019 15:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=2SwiOPrz9lQzJrPwuSOi0dkJbqCkOMet1m3VEq6ehp8=;
 b=HuGsw0WO1ywbPU4/6vTO8BnOAFHadJD0Pg7GJPIHyM7K2ZXzN9XA7KhlvLSHqaIWGR
 lxf3aSHSqHWt4a+iyHvbmE9UBLs7kqS7EjO67heUYvMtNCcadSHCMzqW262LcbSs+Ftv
 1zUBYo2K4iTDVrJB5lCFUQnitCLrNia7AvDkxhmGFbp5xf+hL8sl0/IVpk8+oVPaAHI5
 zi+hSjAIJHUgW83rltsywRF5KCK5EGSUAQfKdrYNKpf0tI7oaQ6n+1Qh068ev8pkliAa
 QR183GeoiAqs/zLa9+jalxef/R+oj358ZNQYdY/AOqiauKiopgBQJoLKDUxnK0gTDAm1
 AS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=2SwiOPrz9lQzJrPwuSOi0dkJbqCkOMet1m3VEq6ehp8=;
 b=tzxAzGk8xBmLhvIHo5nZYfxkzX2Ax5aAU/WTj44aARIKdYd8C5ShzXChnYXBXzyV9n
 lZT8gmj7waFkAFGRuUigH4tyfmRNhG7oITmwd5Hb9/64GOHau0fA5/seNJdUW4ECFKiC
 zUKxrYAE9Ua6zIEHEDP3qy4iT0H7O1O9LYY7lL0mjPwr1VdyNkE6bacV92xAJ0qonVdF
 Wy/VffvrZGbMx3l5eyATVVaoI5jfIw0d/t/wdRpZSf/QGvjD62uNKlHJQtaUW3VZBPrF
 q590kChcfqWYZsg3FBmbXu8iw7LmLyAIuDw7Jkf0mIGTBi57x/RwvbXh9gxo/vdAZ4HM
 6ijg==
X-Gm-Message-State: APjAAAUqHJR8uP3+h2CgO7x7Lc4Ouh78JaVz/zu/XjM4kAvdjjLgn7bs
 pbrKyBlFx6yK+0Q9dFHnXcKCGw==
X-Google-Smtp-Source: APXvYqywhlrj8ZldFVX9V6ThX8YouDrfs2kh5MsGe9hqOAGTww9D5VUPGptXnPS/Ju6fmldtDbdHHg==
X-Received: by 2002:a5d:85c7:: with SMTP id e7mr10166083ios.59.1574032484957; 
 Sun, 17 Nov 2019 15:14:44 -0800 (PST)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id y15sm3976054iln.32.2019.11.17.15.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 15:14:44 -0800 (PST)
Date: Sun, 17 Nov 2019 15:14:43 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 11/12] riscv: provide a flat image loader
In-Reply-To: <20191028121043.22934-12-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911171514260.5296@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-12-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_151445_883638_C843769E 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: Anup Patel <anup@brainfault.org>, Damien Le Moal <damien.lemoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> This allows just loading the kernel at a pre-set address without
> qemu going bonkers trying to map the ELF file.
> 
> Contains a controbution from Aurabindo Jayamohanan to reuse the
> PAGE_OFFSET definition.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
