Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD6A909D0
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 22:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmLdCXAXQAtYxRXnHn7EqWWWybL6A09n+4vbI4kZRn0=; b=SJOKQOJh9gu2eu
	EnvPvcDhNQqgQJXwHjpmIPpRRYMabf71l06VFwMe7wB7KCzArqg+gY5w4FuKfHRbDm272qGsLF+Q3
	2ZyX47UCLLpwFD48qRXLLFyjYvKrzkyVKP6hNCUmKCi6oM211aT4lAcOMr63bHGS226MNwUu8Iw8o
	oTB2f2NA0W7/wdAKSjAKOinPtWphPMfVUOnf8UUP6ym38kUq3QSwCWNQNELZiR8zgRUS6SNgHfRhB
	GhhlRlkwUH37IkSDQm0bQuWCcSET+dGtMCEzwZ0qGLbqJ6twvtl/cXw6Qxb0YEGwMxlxZ+zx7y9t0
	64DfosTU2AyrPk1l+ETA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjIK-0002qG-9u; Fri, 16 Aug 2019 20:57:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjIG-0002pz-6p
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 20:57:53 +0000
Received: by mail-io1-xd44.google.com with SMTP id o9so8886238iom.3
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 13:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=x2A+jA8TvUdeGR707AJX+KCeZrTXBxcZo9BbTwGkbNg=;
 b=joM2HpggM+PO66/bVFEuWK+NC7z25MGHcXREl1KdKqB8DzDRrvDAAHpll19n5hk7UE
 aZgMgKiA18esB3LtrT9DmfhWwK0ndV3aDs6q2/K+qWcMuA47Z5GcAX3+/s8w8PCvli1j
 g57oUSH5V2V4jpGp9AugDt4Te9odoJMiDI+dlTP43YbktOqAl8n1uaTu7bsiYbxwz7hP
 DNpOkMRNqUZqBaQ43q+jmLOs7dqXB0WsTZx5OW+IIk+Mql5jpFgubmKmMyik9AhCWVp7
 yleY61zHMt3RqcsjKLK7ehi6TmZfXzaDMOuEXCBJX4DFhudVduPSe5HsTJpYwYwTHI8f
 s8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=x2A+jA8TvUdeGR707AJX+KCeZrTXBxcZo9BbTwGkbNg=;
 b=K11tvfGS0vY0jHnfGxDz7f9eq85dzMXDJej8qdovK9jZ+Ntqn1CZZavdHivDZt3NZk
 uLkZTxNn4L8sODPx3Op86pSQy0L8l0rcnU+f32DAeFmITu6i1a0BUMh8DuoHpBLyIfnl
 v2ezS4nKhYKI7bo0eeYkYu54dmDQGVDASiRRIbN//TiycM/OAxD/m9T94FcjKBfKDX81
 F0o3HalFBwxTdeLTHbWEprKLdUB4ufuM/o/8NAHbDGhnwrkkNPPu7PA9+oGS7hvqCXQO
 ZTWB5yxB3HmvgqmVjOXdSVrojk+EFc06MX29XfWunL682dGkbMXloeArar3gMSBDOPH7
 b1tA==
X-Gm-Message-State: APjAAAUzV3vE6sbAKW8QduqvDJHNLtOFoNH0ws511WSdxy9V2sCfHkuC
 vW0310VsmWnyG1x/hzU5OdkDidZ6nKA=
X-Google-Smtp-Source: APXvYqyH/KfU2x6+zl/RvvUACBuGt/ceaxNd9SL9+j2yPqJRDvCBgHg++bWgj5gvJ0SgZakvA/WfjQ==
X-Received: by 2002:a5d:9957:: with SMTP id v23mr12678102ios.117.1565989071186; 
 Fri, 16 Aug 2019 13:57:51 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 s10sm8126750iod.46.2019.08.16.13.57.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 13:57:50 -0700 (PDT)
Date: Fri, 16 Aug 2019 13:57:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Carlos Eduardo de Paula <me@carlosedp.com>
Subject: Re: Changing SiFive Unleashed core clock rate on 5.x kernel
In-Reply-To: <CADnnUqcp0DDy1UOT4nMvokqLR2Y2BMU7=UfnOLnjXy7MQpRn-g@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908161354370.18249@viisi.sifive.com>
References: <CADnnUqcp_7yN4WK2uXberCV_uwjPSj0PxpiXg6kp71--QGPJaA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131417450.29979@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908131908000.19217@viisi.sifive.com>
 <CADnnUqeUwjhmFp5moem4Cx-ux1kAmhpdyeerTqZ2cNhyvrT_hw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908161221010.18249@viisi.sifive.com>
 <CADnnUqcp0DDy1UOT4nMvokqLR2Y2BMU7=UfnOLnjXy7MQpRn-g@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_135752_314040_1410AE2A 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019, Carlos Eduardo de Paula wrote:

> Hi Paul

Hi.  Just as an aside, kernel list etiquette usually disapproves of
top-posting.  Better to find out sooner rather than later, I guess...

> I've built that 5.3 kernel and also used the DTs on my 5.2 Kernel but on 
> both cases the network interface didn't come up.
> 
> I used both defconfig and my own .config, after this I've built latest
> OpenSBI with the DT with command:
> 
> make CROSS_COMPILE=riscv64-unknown-linux-gnu- \
>     PLATFORM=sifive/fu540 \
>     FW_PAYLOAD_PATH=../linux/arch/riscv/boot/Image \
>     FW_PAYLOAD_FDT_PATH=../linux/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
> 
> 
> Any adjustment I need?

For v5.3-rc4, you'll probably need this patch:

https://lore.kernel.org/linux-riscv/1563534631-15897-2-git-send-email-yash.shah@sifive.com/

and you'll also need something like this for v5.2:

https://lore.kernel.org/linux-riscv/1563534631-15897-3-git-send-email-yash.shah@sifive.com/


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
