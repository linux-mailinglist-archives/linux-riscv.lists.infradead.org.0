Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C5019EFA2
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Apr 2020 06:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5fs8V2Zn1S9zGMZnOpQlB2LD5nbEtasIOqLpHPCwiF4=; b=PO03cetWDvd/K8WV/Uyen1XdX
	gPUCIazMQ/FAuqtbvthaZC32aK1XAAQMofUMQW9wX7Zu0uFJL2gchogP77YdeRmjEnchf7fZjEOl7
	2+epnUU4Uh4T9lPgnfO+5GBp9Rdoyiy8ViBxp9aZjJwQu3sgh6UMoZkNXHRwEU6/Pehhc5DHafMmi
	E1DsaCwscLAyAS+9D9y486356iemHcQl162lJoHWcJPAohyL95sTwIctkN41/1kdBdw7DvRRbZsiJ
	PVe9egs5x/m10YlkvQan2ufhSAdgQ5xDQr4jiIHJW0NC6jDClgVRbnlbi5VjIj0Iu2B1l/KP8Gd3M
	YuNfYBv2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLJ9w-0002GS-MO; Mon, 06 Apr 2020 04:14:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLJ9s-0002Fq-D7
 for linux-riscv@lists.infradead.org; Mon, 06 Apr 2020 04:14:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id p10so15683449wrt.6
 for <linux-riscv@lists.infradead.org>; Sun, 05 Apr 2020 21:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5fs8V2Zn1S9zGMZnOpQlB2LD5nbEtasIOqLpHPCwiF4=;
 b=DsjKRJHo06SKxuU52auqO0c/LG1SKBUikqb1/Q7mizWmpqWCXMN5TGWKrOWysLnHs7
 muqbgr8xn17fqGpVoS/mtNq9Hr76tM0CuT8/JeM/MDGNGE4tCMbdNr293Cax0gbihVqZ
 j3ffoFft07axbqJ5r7iCKfvTqE+DbURmjKtECH8TNzXFZiruCNQQ11FwPc25EBpNZB/N
 gPzC1XLlYtVyEtz2/MODlpapUayaILCxg2I3z0BiDB+DdqzGJNJCyjiF2aqdxT/hCh13
 V8gOCYCzr4/UdChLf5NJTyOQ8lR4+MP9g2NHfNuXYbRK+ZTfEZnuH116z/Ac9IlaJG6B
 kIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5fs8V2Zn1S9zGMZnOpQlB2LD5nbEtasIOqLpHPCwiF4=;
 b=OlxdcPGH5e8REUTQHYO1k18lpHQlFgdA8QAvukN0sno78Ydpm20nW4OHXKpOzKTHyF
 OlQpSu/jm4UjvoqKqo09fV06g9Jft/4Xbo5/h2swSRZbXelDuNw6xg4UNehXz9BAaf+3
 31YWdbWzstaRLBUFC6TbqKZcfrUcGythy60+SMRP8U/Rct0h78Zg7opwgPpqzC2AkOzi
 SdWB/Dq8xWp8oDKSCQjBC7b6U5/ZRIPNHAoAMoICzKwaLdve/5GaaNxsllIzGBgr8fOC
 Jpc5zzmV33Nxvi2sUfsYnYV4mD1RaXiA6Q1oEp0nwhar84n9z6jh6cJo+J+Rfq74FSoT
 oBHA==
X-Gm-Message-State: AGi0PubFE6W+oNvzsyskUU+Rd1yuYknslIADoZSkr6LWUHU/hHrxdh1G
 OgVa+oxmP9R4BaIcvYlbGNqO7Po4R76rnlYgInqVDw==
X-Google-Smtp-Source: APiQypIEVIXYcLTNFkSmMnccjhMek5oxofAXzoAZMb3vteVecGxBjtpLwThLMooTjxz1LZ3XCI8nKm7xYf6htPlFt74=
X-Received: by 2002:a5d:684c:: with SMTP id o12mr3369396wrw.0.1586146485309;
 Sun, 05 Apr 2020 21:14:45 -0700 (PDT)
MIME-Version: 1.0
References: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
 <20200403101227.74abwoyxzx4rlake@holly.lan>
 <CABvJ_xh2pocd1xywyZ_4VQbs8eFO6ehQfsRkQTpdTDUJXbsXEg@mail.gmail.com>
In-Reply-To: <CABvJ_xh2pocd1xywyZ_4VQbs8eFO6ehQfsRkQTpdTDUJXbsXEg@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 6 Apr 2020 09:44:33 +0530
Message-ID: <CAAhSdy2h0BsSQjL25tTZRx2JV1fnpnW9RgSO6keXopBJaJCsZw@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] riscv: Add KGDB and KDB support
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_211448_503548_8D8D0349 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 kgdb-bugreport@lists.sourceforge.net, jason.wessel@windriver.com,
 Douglas Anderson <dianders@chromium.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 6, 2020 at 8:05 AM Vincent Chen <vincent.chen@sifive.com> wrote:
>
> On Fri, Apr 3, 2020 at 6:12 PM Daniel Thompson
> <daniel.thompson@linaro.org> wrote:
> >
> > On Tue, Mar 31, 2020 at 11:23:06PM +0800, Vincent Chen wrote:
> > > This patch set implements required ports to enable RISC-V kernel to support
> > > KGDB and KDB features. Because there is no immediate value in the RISC-V
> > > trap instruction, the kernel cannot identify the purpose of each trap
> > > exception through the opcode. This makes the existing identification
> > > schemes in other architecture unsuitable for the RISC-V kernel. In order
> > > to solve this problem, this patch adds the kgdb_has_hit_break() to kgdb.c
> > > to help the RISC-V kernel identify the KGDB trap exception. In addition,
> > > the XML target description was introduced in this patch set to enable KGDB
> > > to report the contents of the status, cause and steal registers.
> > >
> > > This patchset has passed the kgdbts test suite provided by Linux kernel on
> > > HiFive unleashed board and QEMU.
> >
> > Can you share the defconfig and qemu boot lines used for testing.
> >
> > I'd like to see if they can easily be integrated into kgdbtest. Normally
> > figuring out the qemu boot line is the hardest bit of adding support for
> > an architecture one is not familar with.
> >
> The process of building a RISC-V kernel is a bit different from other
> architecture. Maybe you can refer the steps in
> https://risc-v-getting-started-guide.readthedocs.io/en/latest/linux-qemu.html
> to build the kernel image and run it.
>
> For the Linux configuration used by KGDB, I just enable KGDB related
> configuration based on riscv defconfig. The riscv defconfig can
> founded in arch/riscv/configs/defconfig
>
> The QEMU boot lines are listed in the following.
>
> qemu-system-riscv64 -M virt -m 256M -nographic \
> -kernel <bbl image>\
> -append "debug root=/dev/vda rw console=ttyS0" \
> -drive file=<root file system>,format=raw,id=hd0 \
> -serial tcp:localhost:2345,server \
> -gdb tcp::1133 \
> -device virtio-blk-device,drive=hd0 \

Majority of folks (including distros) have moved to OpenSBI instead
of BBL. In fact, QEMU releases ship with OpenSBI as default M-mode
firmware.

To boot Linux on QEMU Virt with OpenSBI as M-mode firmware refer:
https://github.com/riscv/opensbi/blob/master/docs/platform/qemu_virt.md

Regards,
Anup

