Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FA2107C99
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 04:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oQZBggspyPEi2NdHiRJ/ENixJVmZrIQYO8Veh9YIsQ=; b=IJZDQOwxVhXkSs
	OCdLm0GAMbdf5NRtjLqpRqo3xEPgxshTYgmXBecCeMal2J8djxWwVbjTvo/SDrsUlh+hJbgkmjffz
	Ql6pHwN9zCOjHFXhWaLBtmtOKe5glJ/HgARmpMzF8jr0myMmzcIAA5L0QSVHqZX5ysg5rpdpNfHiM
	NNTWpYTTMxE5fs3Et8hEi20zsPyICSTSQZtmvgx1R1lqNG45+PKfSXZbhHX4UayRSa3cw5rE13E4J
	wz5lwiCGz65x5IEKl/BLOABvcv7jtrHVexqVeDe/1sKT5Ro5sZwA5dsKpN2k5MPdkDp465QWUjBbH
	sIUbfNfC4p/dHLhQ6Dbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYLhn-0004WO-Nm; Sat, 23 Nov 2019 03:03:27 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYLhj-0004W4-Uk
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 03:03:25 +0000
Received: by mail-il1-x144.google.com with SMTP id q15so9078001ils.8
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 19:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=2llGKEwGqv02JA/iBX+8mG7RLi4bNxYF08xd4XLsLD8=;
 b=ep6UGdtnlU/KZdTqxXNqm0FzL29oHDdirYk4Fc3SybTk4zz23nIC0y2M+TzIOtoB+1
 EBgutDulXFno8wkRsiSMqOf4JrVuVsjjO+br0kUtBtbPda7hCpJ5B/gM9c5YAR6fW3pN
 Ru/3l7SwaiXpg+AFO1AxFQ2njVZJ4vy/bIs5kLhLVGra/NYBrtU/aCHGKUZMQV3214nu
 wVje/GBG1bTJLnUgdOM7pqNhn8X+tSy6tD/DPTEYbayyVCJ9UMOQr9Kaxz2sX+Q585+B
 Q0GsIL6LTzNQ1Hqi96qVQqhtExbH3lUyFsatcmJ6EhXcx6CDJHLhcUt7ISHlDcz+kAws
 s3iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=2llGKEwGqv02JA/iBX+8mG7RLi4bNxYF08xd4XLsLD8=;
 b=o41ROSdHpS8uc7R6iw8AZ5eKU6Sm/dTyJwj58AnNnQ9hjgKwKhqFVHbgACl6qEaQw3
 f2wen0qmumrs03APJz1KOAQl5QIL87cOs7oYsU5vu7n21Hu33gEDC4Imzt8x6jwnlK7n
 tFNq8r3SyNs8xGPMFzEUEkUQKkvw5RspHHNU/dVubkwGco5cju8eEtyjuNINZe29KTSS
 39V7Hk1ifJsIUybCZeP6+Hx02ndGb0pkfwmER+jFFo6Lqkh/qLEtSXr2frjGU608Cdkg
 jA0WXDIjxCLWcpab7kAb3D1v09s81BG+oxZUJR57l+zR4zOa8CGIv5pqagOFPiFrEScd
 3L2g==
X-Gm-Message-State: APjAAAUca5ci1NshGUmT3IbnyDmS6mPa+yjewakQ+qaToZSK+NdGz5Xu
 hhH0IyS4/27lsvDWk85IZpCBzjcdJ34=
X-Google-Smtp-Source: APXvYqyflPBOhrUhlsM4NKxHbLsbeWUNItVw1cZNZ7q1pxHf4aG881IEeLsmwO9inXyKq5ciJSUL9A==
X-Received: by 2002:a02:c4cd:: with SMTP id h13mr17996512jaj.33.1574478203111; 
 Fri, 22 Nov 2019 19:03:23 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id r17sm3612636ill.19.2019.11.22.19.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 19:03:22 -0800 (PST)
Date: Fri, 22 Nov 2019 19:03:20 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
In-Reply-To: <20191111133421.14390-1-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1911221901320.490@viisi.sifive.com>
References: <20191111133421.14390-1-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_190324_119871_52764FC9 
X-CRM114-Status: UNSURE (   7.20  )
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
Cc: Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019, Anup Patel wrote:

> We can use SYSCON reboot and poweroff drivers for the
> SiFive test device found on QEMU virt machine and SiFive
> SOCs.
> 
> This patch enables SYSCON reboot and poweroff drivers
> in RV64 and RV32 defconfigs.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

Sounds like Christoph isn't planning to follow up on his reset driver.  
So this patch looks OK to me, as far as QEMU is concerned.  Still it seems 
best to avoid SYSCON for real hardware as much as possible, so, will plan 
to apply this after CONFIG_SOC_VIRT support lands.

thanks,

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
