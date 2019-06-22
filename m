Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FDB4F2C3
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 02:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5qqfZ0xY2Dhqnwt9Z3xw1Awz9KeUb+OK159Ya+ZvBA=; b=PokljHxUCFrlK+
	/mbsKVIiJr/jyNGsqK+gryiNZJg8xi+EKglTsWkjh1jEnp2+Nj0mHADaoXKL/bKwa0uOIYwUTTI09
	HXyVcqbbcCX0K0/PpThCEpxtnoWElzajirwviX86apmUVPo1ioCF+m/VZv7q+KN+pa3vbAvAQpMnT
	wnMlbIrTSUb9u8KiG/6PInwjwfRu4VbyLjk6DJCVX/4oV+4KaLeThdj+UyHJBVba00fuI+Z4jWraT
	bVScZRbuVBVUI2VpuE0nGaBuxu2RIa+VZdJrlUIV+4RGdZqjrdE/sdTcASuFDycZB+k5r2K8SJarm
	Vb/4Q60tUMjB/G9EZlsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTyI-0002i3-Fx; Sat, 22 Jun 2019 00:33:34 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTyE-0002hX-Ma
 for linux-riscv@lists.infradead.org; Sat, 22 Jun 2019 00:33:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id n5so550627ioc.7
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 17:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NHLr//yQH3FibWWGf0VOdOavz2CGejgKb89IUY1MXFo=;
 b=Qrs+9teS7UTpNo2fGNSwnTnrhefMfzdW8D6HsbxK6k6IJ3rUcPChijTddejlho5w0k
 lNhWWeMdKb7GSy5o9Wt/kZH6YUAlxG5bwjlHgjlqtwbYNjFgmSFrDySBkOH8VYiLFVog
 BUPhcxeEr/MaJIiquLdplXElopUWHZT3bPTFr3cfFG7EfzGovHA9gRfEwdKuPQO5UqZu
 MKDfFUcB5ltI9K145I5ktm68luneLChPyFgiorD4CMrNLC4j2MXFJEY6M7RjX9h3ctgo
 48HG7QRrtcb37BD1k09Gw1yi3BKlSuxuaYLYXCYNDTE0B/XoRndnGTAMYA4ERncr/HxK
 dazA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NHLr//yQH3FibWWGf0VOdOavz2CGejgKb89IUY1MXFo=;
 b=bg+8Ch65I3Wjpe7VNUflRASM5rXB118c6YFgN17+lVCoa/RoCVlXUFpfSWEsjwYCiB
 8UUN3OYA7cWicndCEnH8iMEV4et+CFL1NOu3yDlFHRoh/yz8kbmJCD98TAIjugMe7HGg
 IVRnE2DMjx1ZosfNo2xWbY2g0qG9uRAB9BJgkaer2exkPBeGYvL46q43+GxTQOtyAAOT
 uGyOd88HMZPfj/yrcPZXx1wpr91tBVPOx7uAHvIoyOOJ4vOGZOhvpLXTMtWS/ZJxOz0R
 C4jklbUSqW623y3NpkpzWaSsPcvW2jbmIWNYm6afkz0E/MuTN1IIhHlc5EhiUZwGRtU3
 WPgQ==
X-Gm-Message-State: APjAAAUJVsvhWE9RYp2zoXUnEIiI6hv2OymOV2bXpZuPSQ8ziinLlVx9
 Em76HXuJGX6J0oJYrKMHVDcjhQ==
X-Google-Smtp-Source: APXvYqxKicFVJ7wXzGl2bB4xCk/+YuG5c3I5NfchOVDHv5Um/Mjq2VFrSa7LjeWfHs1Nqhg56Sd1pQ==
X-Received: by 2002:a5d:9c46:: with SMTP id 6mr3383520iof.6.1561163609280;
 Fri, 21 Jun 2019 17:33:29 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id q13sm4895543ioh.36.2019.06.21.17.33.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 17:33:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <43da99709709d2a480b78f25356cda9255205372.camel@wdc.com>
Date: Fri, 21 Jun 2019 19:33:27 -0500
Message-Id: <A3E7D245-ABFA-4D81-87D6-3F6983AA3A93@sifive.com>
References: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
 <1561114429-29612-2-git-send-email-yash.shah@sifive.com>
 <18c7992607dd1fed062bd295ac0738a759eff078.camel@wdc.com>
 <CAF5mof3QB8C7VjOyEvCsf9NEDkJhV3cBO5sBD+8z-GrWrnrAyg@mail.gmail.com>
 <3f91c8032e113a19dcec10ca71b017af1427ef7e.camel@wdc.com>
 <43da99709709d2a480b78f25356cda9255205372.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_173330_771737_AA191B68 
X-CRM114-Status: GOOD (  15.03  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sachin.ghadi@sifive.com" <sachin.ghadi@sifive.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Jun 21, 2019, at 4:59 PM, Atish Patra <Atish.Patra@wdc.com> wrote:
> 
> On Fri, 2019-06-21 at 14:46 -0700, Atish Patra wrote:
>> On Fri, 2019-06-21 at 14:18 -0500, Troy Benjegerdes wrote:
>>> Can you post the fsbl and other images you used to boot/test this?
>>> 
>> 
> 
> Resending it without the attachment. Obviously, the mail did not go
> through with the binary blob attached :( :(. My bad.
> 
> Let me know if you still want me to share the binary with you. I will
> probably share it via some other method.

The bl came through as it was sent direct to me, and I can deal with
the tftp config manually. I have a kernel image, but not the boot.scr.uimg
that it looks like you are using. Is that from Yocto?

> 
>> I have not changed fsbl. It's the default one came with the board.
>> Here are the heads of OpenSBI + U-Boot + Linux repo.
>> 
>> OpenSBI: cd2dfdc870ed (master)
>> U-boot: 77f6e2dd0551 + Anup's patch series (v4)
>> https://github.com/atishp04/u-boot/tree/unleashed_working
>> 
>> Linux: bed3c0d84e7e + Yash's Macb Series + this patch
>> https://github.com/atishp04/linux/tree/5.2-rc6-pre
>> 
>> I have also attached the OpenSBI + U-boot binary as well. But this is
>> pre-configured with my tftpboot server. You need to change that.
>> 
>>> I keep running into various failures when I build from source and I
>>> want to rule out potential hardware issues related to clock and/or
>>> ddr initialization
>>> 
>>> On Fri, Jun 21, 2019, 2:14 PM Atish Patra <Atish.Patra@wdc.com>
>>> wrote:
>>>> On Fri, 2019-06-21 at 16:23 +0530, Yash Shah wrote:
>>>>> DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver
>>>> added
>>>>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>>>>> ---
>>>>> arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16
>>>>> ++++++++++++++++
>>>>> arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9
>>>> +++++++++
>>>>> 2 files changed, 25 insertions(+)
>>>>> 
>>>>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>>>>> b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>>>>> index 4e8fbde..c53b4ea 100644
>>>>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>>>>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>>>>> @@ -225,5 +225,21 @@
>>>>>                      #address-cells = <1>;
>>>>>                      #size-cells = <0>;
>>>>>              };
>>>>> +             eth0: ethernet@10090000 {
>>>>> +                     compatible = "sifive,fu540-macb";
>>>>> +                     interrupt-parent = <&plic0>;
>>>>> +                     interrupts = <53>;
>>>>> +                     reg = <0x0 0x10090000 0x0 0x2000
>>>>> +                            0x0 0x100a0000 0x0 0x1000>;
>>>>> +                     reg-names = "control";
>>>>> +                     status = "disabled";
>>>>> +                     local-mac-address = [00 00 00 00 00 00];
>>>>> +                     clock-names = "pclk", "hclk";
>>>>> +                     clocks = <&prci PRCI_CLK_GEMGXLPLL>,
>>>>> +                              <&prci PRCI_CLK_GEMGXLPLL>;
>>>>> +                     #address-cells = <1>;
>>>>> +                     #size-cells = <0>;
>>>>> +             };
>>>>> +
>>>>>      };
>>>>> };
>>>>> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-
>>>>> a00.dts
>>>>> b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>>>>> index 4da8870..d783bf2 100644
>>>>> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>>>>> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>>>>> @@ -63,3 +63,12 @@
>>>>>              disable-wp;
>>>>>      };
>>>>> };
>>>>> +
>>>>> +&eth0 {
>>>>> +     status = "okay";
>>>>> +     phy-mode = "gmii";
>>>>> +     phy-handle = <&phy1>;
>>>>> +     phy1: ethernet-phy@0 {
>>>>> +             reg = <0>;
>>>>> +     };
>>>>> +};
>>>> 
>>>> Thanks. I am able to boot Unleashed with networking enabled with
>>>> this
>>>> patch.
>>>> 
>>>> FWIW, 
>>>> Tested-by: Atish Patra <atish.patra@wdc.com>
>>>> 
>>>> Regards,
>>>> Atish
>>>> _______________________________________________
>>>> linux-riscv mailing list
>>>> linux-riscv@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-riscv


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
