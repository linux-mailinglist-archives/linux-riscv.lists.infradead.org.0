Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B5717E0DA
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 14:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+qTEownbzicYobeGFGA+R3LpcTCHzP4sxilQBjee/6w=; b=r0CIi6ZgPxUqOmdB8mF2iko0G
	21+N57t53uB5zrcmPh7FOTvQYZLsqcqIicSqj5xHcXLAGPCs0Bn3VirQoYPncFDGbR0YsE6Q3tc6/
	hVg9v8jQ89QL2a/K4N2xy6nSLNsl9bcRdpGlQUd7rzsBum4xGDEgz2cAwUx2k054f5pxtjGacyffG
	dkqLyt3X+1Px999O8xhGR65+baVULNn0XV5zCpKI55nK4vOeiz27ALdUYjAGu1lmuZf4kjNAlcMvj
	mW3LEZVnX/zve7tgLRRyJZmydop7asdjvyR2JGZ9CZcm7EKNKC55JBu5Jo5K+eQhB/GAwtR+uLT5f
	SNJdZq9xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBID8-0007qj-5A; Mon, 09 Mar 2020 13:12:46 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBID4-0007qK-CE
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 13:12:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 06:12:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; 
 d="gz'50?scan'50,208,50";a="353365141"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2020 06:12:38 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jBICz-000Fe1-UK; Mon, 09 Mar 2020 21:12:37 +0800
Date: Mon, 9 Mar 2020 21:12:08 +0800
From: kbuild test robot <lkp@intel.com>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v2 8/9] riscv: introduce interfaces to patch kernel code
Message-ID: <202003092121.lEcswcgH%lkp@intel.com>
References: <e2a42afbce47b364bf790b4cf8edf76235e48d53.1583741997.git.zong.li@sifive.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
In-Reply-To: <e2a42afbce47b364bf790b4cf8edf76235e48d53.1583741997.git.zong.li@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_061242_441313_08EF890C 
X-CRM114-Status: UNSURE (   5.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aou@eecs.berkeley.edu, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Zong,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on v5.6-rc5]
[also build test ERROR on next-20200306]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Zong-Li/Support-strict-kernel-memory-permissions-for-security/20200309-172554
base:    2c523b344dfa65a3738e7039832044aa133c75fb
config: riscv-nommu_virt_defconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/riscv//kernel/patch.c:6:0:
   arch/riscv//kernel/patch.c: In function 'riscv_insn_write':
>> arch/riscv//kernel/patch.c:63:25: error: 'patch_lock' undeclared (first use in this function); did you mean 'patch_map'?
     raw_spin_lock_irqsave(&patch_lock, flags);
                            ^
   include/linux/spinlock.h:250:34: note: in definition of macro 'raw_spin_lock_irqsave'
      flags = _raw_spin_lock_irqsave(lock); \
                                     ^~~~
   arch/riscv//kernel/patch.c:63:25: note: each undeclared identifier is reported only once for each function it appears in
     raw_spin_lock_irqsave(&patch_lock, flags);
                            ^
   include/linux/spinlock.h:250:34: note: in definition of macro 'raw_spin_lock_irqsave'
      flags = _raw_spin_lock_irqsave(lock); \
                                     ^~~~
>> arch/riscv//kernel/patch.c:66:25: error: 'FIX_TEXT_POKE1' undeclared (first use in this function)
      patch_map(addr + len, FIX_TEXT_POKE1);
                            ^~~~~~~~~~~~~~
>> arch/riscv//kernel/patch.c:68:26: error: 'FIX_TEXT_POKE0' undeclared (first use in this function); did you mean 'FIX_TEXT_POKE1'?
     waddr = patch_map(addr, FIX_TEXT_POKE0);
                             ^~~~~~~~~~~~~~
                             FIX_TEXT_POKE1

vim +63 arch/riscv//kernel/patch.c

    55	
    56	static int __kprobes riscv_insn_write(void *addr, const void *insn, size_t len)
    57	{
    58		void *waddr = addr;
    59		bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
    60		unsigned long flags = 0;
    61		int ret;
    62	
  > 63		raw_spin_lock_irqsave(&patch_lock, flags);
    64	
    65		if (across_pages)
  > 66			patch_map(addr + len, FIX_TEXT_POKE1);
    67	
  > 68		waddr = patch_map(addr, FIX_TEXT_POKE0);
    69	
    70		ret = probe_kernel_write(waddr, insn, len);
    71	
    72		patch_unmap(FIX_TEXT_POKE0);
    73	
    74		if (across_pages)
    75			patch_unmap(FIX_TEXT_POKE1);
    76	
    77		raw_spin_unlock_irqrestore(&patch_lock, flags);
    78	
    79		return ret;
    80	}
    81	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKA9Zl4AAy5jb25maWcAnFztc9s2k//ev4KTzjzTztMkfold5278AQJBCRVJMASol9zc
cBSJTjS1JZ9e0vj++tsFSREkATlznbaJsYslXha7v10s/Osvv3rkeNg+LQ7r5eLx8cX7WmyK
3eJQrLyH9WPxn54vvFgoj/lcvQPmcL05/ni/W++X372bd7fvLt7uljfeuNhtikePbjcP669H
6L7ebn759Rf491dofHoGSbv/8HSv2w9vH1HG26/LpffbkNLfvT/f3by7AF4q4oAPc0pzLnOg
3L/UTfBDPmGp5CK+//Pi5uLixBuSeHgiXRgiRkTmREb5UCjRCDIIPA55zHqkKUnjPCLzAcuz
mMdccRLyz8xvMfpckkHIfoKZp5/yqUjHTYsapYz48PlAwP9yRSQS9VIN9do/evvicHxuFgQF
5yye5CQd5iGPuLq/vsKVrcYjooTDYBSTylvvvc32gBLq3qGgJKxX6M0bW3NOMnORBhkP/VyS
UBn8PgtIFqp8JKSKScTu3/y22W6K3980A5FzOeEJNcdwomWShXxgGd6ITBhMjI5gEKBjIAPG
FdYrAsvn7Y9f9i/7Q/HUrMiQxSzlVK+uHIlpe719EREe29ryEWcpfmzeUGVCUsmQCdp+9YrN
yts+dD5s+24Eq8Fh+LEfstRQ1YqFwgKP2YTFStaTUeunYre3zWf0OU+gl/A51YOommOBFA4f
sK6pJlspIz4c5SmTueIRbHGbp5phbzT1YJKUsShRIF4fj5PQun0iwixWJJ1bP11xmbTSDCTZ
e7XY/+0d4LveAsawPywOe2+xXG6Pm8N687VZDsXpOIcOOaFUwLd4PDQHMpA+fEZQJiVyKPs4
JLdO+yfGYRwtGAOXIiQKTklvSinNPNnfTAUrkAPNHDL8mLMZ7LHthMqS2ezebsLeUsGxwLMe
ibhNiRmD08qGdBByqUwlbg+wGQ0fl3+xLhwfj8A+dbTmZDTQOgRw5nig7i9vzXZcq4jMTPpV
o1I8VmMwKQHryrjqHhxJRzAffXzqgyOX34rVEXyI91AsDsddsdfN1Swt1I5Nh49fXt01q6bN
jcySRKTKoDbbPkxFlkj7oQPbByYDlM9KhsHTcSJAJp4/JVL70S0niWZXf8rOM5eBBLsLJ4oS
xXwrU8pCMrfs1CAcQ9eJ9h2p6Y/wZxKBYCmylDK08M3Wn4iBAJpFbOrnw888aam2nw+g6co+
PD8PP0fERZvZzZfuJdykD1bSQAiVn1FsUAaRgEEEB43zQ4sLf0Qkts60yy3hL4bTADelwu7P
cMQpS9BWwCkGFWno5dlvftbOA3xiaq6kHDIVARzIKyd4RivOcQSlT7LMKRGSzyqf0IylPJym
+29bWwLeMcjaH6s/lSk2a3rqH/OENy3au5fNNEpmdNQSzRLhmiUfxiQM7DqvJ+CgaY/roBFu
1yku8gzWwK41xJ9wWIBqwe2HPmLRgKQpYAsreYwd55G97yAJzu4miGa+3z795uKiFucnnNG4
P3p50Tom2mJWOD0pdg/b3dNisyw89r3YgPsjYEspOkDABKW/ruQ04q3u9CclNgInUSku1569
B04MTEtUPkjHdvUIycBByGwgU4Zi0Dpp0B92LR2yGtfapY2yIABknRBghA0CyAwW3a4CEUk0
y7QdCTgwkgh42NO4aknbUUA9hdsPA24YkJRLOul4ND2GNAZ7DDg6jwACX96dYyCz+6sPLYF5
lEfCb6G+KMosC/oZsGHuR+T6qhnDhGi599cfT5alarm5bVpgJUUQSKbuL37cXZT/tAYZANqC
AwUBD4ZYnSlOCWiORgokzEcZGMxw4PLrPgNLpr+ot65lrBuuSkhgGESAWnSsDXjNZqIzbAb8
D8Mcyj69RjGlEe03aoetOB5cBAktQ3wKHUB1Bim4fJgCeHcLg8yifutoygD2G2NJhkpHqSEc
uBD2pQJTWwo7+VgsqyC90XYB4IsHMDb7YQDyhKfKqrNtoVpq8rg4oE3wDi/PhfkdvUvp5PqK
WxSrIt5+4C1AhloZwon14YDZnPWJTmJjvUDDk9FcojZdDVsGwKAA9htabUaUNJLiFPGtvD+d
J5XBAahWvnMqIWIgudEYJJkJytvrYprlFrhtIsPLiwub8f+cX91cmHOClus2a0eKXcw9iDF2
mVG0vedsfYOycZyDLbBtn3Hf90YOJ/J1duXNDsj371fF9/ffVwtv949XLHaPL8vt5v642B3u
4Nt/PD2tt39c/LisjMEfl5c3VxcXmzsPuPbbx+L+cHiRF29MbdDC8wDO9QCOqt2DVExsplhs
854nKQh1zQ1qzahU5e0/EF2Ad1t8LZ7AuRnzbWx6ZF0zZ9dWwmexW35bH+D0wLq+XRXP0Ln9
GdPj6yOi7dBIiHHfDoDi6pxBlWnqmEeMh8D6ImYR6dxB9DnEHMBDkg6Uw8QZnLUqbyQ7VBqO
Oy0aPqRs2OXU7Yh/S2Ob+1nU+5Q25qU65uAulZllqQI73Rm8qYLRAkavMhamFLRYnVQCLpTN
raAngG2EWHpE0q4cKpJ5nbpToTEdCFRBiVANpyT1WxisAjHXV+AENWh12btyKrB3Kh+zNAZL
lk5npj/qk0r1oWLy9stiX6y8v8uz+bzbPqwfW8mU0xeQu4IeGs2YOn9O0smdhNkQU2hCKkrv
33z997/f9EHLK5p8MpSgXBgVMGMldaAhIxzZpWGphZ+FzJaMGFQpggZKVzHvQNqhvEHv5CJ7
LOiahylX9hxXzYUoyI7wkKM2MDq/aEeNyDYd2MEn0iTzIQolYQ/IJ2A817ikngIvYlgI+Jji
OgKFwAVDW99cIUJFGjc8jihp9gqHkMFrMiI+JK/xKJLyV3giQl/jkL6Qr/CEfvQKhxy+NhII
EdJXF0Zmry3umKTRawvDgtcGg4n227tXmAz1s3HV/qmjSGb+KPqkzScXp2y8aJJtLecHnFyU
OS0fLCR+175bDd94PnAcippjEHyyDrk9iiaxpWcrEzBRWYymoUrpt+nagJf0czRr3ykYBObq
bBLbvU8GOIq4mBrhyulnvZTsR7E8HhZfHgt98+bpePpgHO0Bj4NI5ZKmPFEW8RUd4yfDqLYa
G+PSNOcidNiwkuczMp1j0O7Sz19jiwAbO2J96J45MKdrVfSSRcXTdvfiRTZgVoPvMpo00DhO
OYZwARGQBeFgLkfvYclj0mUSgiNPlCbrcOCj/udkeyGiALPrp7nqhuuxgDg6r/ICAN54pHOF
UpqujoYMLDYB5beu0+dECHuO6PMgcyQaWIrYB2BSN31TY8YsyQcspqOItFMtXeVKFJ4tRmH4
Jm5w74CRMWe2Sw+92AyzX3/phdIb6hff18vC83fr76WFaWFG2ooJ4Uf7nCkFINbzmBqgrJeV
bE/0EXxW5qVGLEzalqmig8dXUWImCuoWACkALVsJhNgnYQuNJmkpPuBpBEiRlbes9cSD9e7p
n8Wu8B63i1WxM4cVTPNQ4IWM9Xx0Oxr+VSejEKbYD9hpDpiV8FMI++3muGJgk9Rx5VEy4O1z
JQYMaSQmNrR7SmCAUoJETpkl/VHGNyIRoRjOWyDVvoVlGHrceyutPa27IbPZ0PpYOhK5yhYp
+sqI5kVgKqEIMN2nHFfvQEVzgzd6poCckTSc20ljMfir1YD2BO2E2dZyLwIDLACYE7DBpaUz
Rwf7kHZuiJqTQlJMXrlvj2zgOs7CEH84C4xDIZLeCfTTge+t1ns05ivvS7FcHPeFhxe5eSC9
7c7jaCnKLphJKlbmMahFpySyexE/FQDzxor6E9smlkgGxdRnLp5ARCaPz8/b3cH8ErbnAbUe
t1af0get98uW5tVKk0XRHHfKjvFiiBtlBmYAd467bhOla7YzTB/PcukHzO5Uk0lCYu5wuFfd
bS8BCIO9iLx9f0VKSv7xms5u7V663bWsdih+LPYe3+wPu+OTvhHYfwNDtfIOu8Vmj3wehJcF
asRy/Yx/NQ/u/6O37k4eDxCHekEyJAAYKtu42v6zQfvoPW0RNXq/7Yr/Oa53BXzgiv5eFyrx
zQHi3ggW7V/ernjUNVCWxZgIcJmZ/TbknAhjOelIWLu3dKlM1lLJqxZjLLV2ABHj49ZtLOF+
jnbFoVDUURZh+1ArVrPbS8cFHUmHTGm/YzmJcIZaRS4TOLYdg1Ltx/Px4Jw8j5OsBWl1Qx4E
aARD5jDwJRNeO4ItOcNRFgWNAf6dYYoIxoRdJj32bF/sHrG4ZI33Xw+LjnGo+osMAvyz4/hL
zM8zsMlrdHDOjqXtoa1O3zGbD0QHS9mmcH78Eqt5zrDoOwp75FAxiIyOIOphzB7oViNxhRdp
xD/0VFFPdrTYrbR94O+Fh9rVWgOJBVl20Ewi1rWgp4NkE9qYB4tGl98E47YAl7czXEl9mJSR
pZ0YKBP+kALTvCmJZVmiJE3OmsEIcKZGW2PQlEHAaM3v3EzW+Djms493EAnMW1nOkA0Jnetm
u8mBdYSYJwb5GhY79Km6b+OxXVc07FCOfFzow+brahpEyg6QCp7b7kuBNO7QStsLYHPx6K26
wUg1IQ3iqFmMVRHuOvcyRrNRzaOrS2BNzq2Z7nJ5e3NzQfIJgabeLbyFP8DcpS2WM5l6qmES
4zTPSKowNrVQU8yiA0KqWayDKG9dHMnR1oJMX2VJ1dXd3cw9IUC5Cag/1vKcoN128xb7Arfe
Q40XLL68koBTgdDe5qwqDrQfvcXCRtuBqsjn7lIrDkrjmaP4q+QgeO1B8r8UGeIgf4L1NbYK
OSbyVU6Iw86RAxnmYfKaEM3F4yBks9dY4Sc2w4sYnw85haNsj3g7x7InRmf4u/issaVVuZOV
XMUI1ZbanU0SnYp+7VetU8BgsS/stiYl03OxtqLwX/cmsYH84dwFPPv+w/wmDgcMbAYROhbJ
9dMJJSi4orYzgs1WrGuwG9zXDqVJ7NkaCetpX8cuUK0Dm3ZdZnkbohJv+bhd/m2MvwxpNjpz
mIzmeOGDeAxCTCzHx1ydvpIDnxQl6O8OW5BXeIdvhbdYrXRKHLRMS92/MyOT/seMwfGYqtSe
pBsmXLiunaaX9rmKKUtzMrErc0nF2N9RAa3pWKES2t3maBo57g7UiKURsc9jShQd+cKGEKQc
YI2h5IOOQZS2AosBxasQCzsSenscHR8P64fjRleY1Bhq1YeuUYDxT8TA9IDNoY5z2HCNQurb
VRZ5IjwpjtgHyCN+++HqMk8iR6Q9Unh/JTm9dooYsyhxJOD1ANTt9cc/nWQZ3VzYdYcMZjcX
Fz3g2+49l9R1rwZkxXMSXV/fzHIlKTmzSupTNLuzZwbObptho9gwC53FdSk9Mw/mc1LXYfWz
vrvF87f1cm8zbH7ax3wE2ixpRLO55KOJ9xs5rtZbj26T3RYI++3u994LqEbCT3Uoc8G7xVPh
fTk+PIA59/uZpWBgXWlrtzI3ulj+/bj++u3g/csDbe+H1A2Qplh5T6SssrP2JB+h4xArzc6w
1unX81+u3ofpKh/M5Dw/Ll4q5bBmXobE5pvr7dQJtx6wbTXDn2EWQZh0d2Gnp2Iq769uDMf6
yuhOuemuohnWT2Rx/z5ixH3bHLHZGlYa7KeADMytGFEOAEspGDwgbggRmqkjvSlQbO45oDkL
E95FSQb5dO0zon6naz/VAW0aXzfG+NSefHvZ47tCL1y8IDbpm+tYJPqLM8r4xDrzM3LacxoS
f+hwhWqeOPKk2DHFnZdTDn7NbmIih+ljkTu5EbMphMa+3XUTind/fABYXNlebzCfUNvWpYqW
h84eyKK36iWTy9x7RAZZYKtbk/OYYnmV/ayX/fIRI93nMNXudAQbU8xmEJUnrrsHXZdVImGb
Ep7qDtrIPGJx61lVndTHuy6HI6tYdJLIfS2AV/H9r0UYDFRlFM11VZX2X+62++3DwRu9PBe7
txPv67HYt4PMU1b3PKsBEVPWR/j1PkEI6HqjMBShH3A5ssyPhuPqQmacda+6gYbXkgkxY9vy
hVlVylc/4H0C30015tVe5p/t7m9Th1DQSPqOQsyTQFCzGV5SRY68GrLYguaTKbaOw8SzWP2B
t/M9/S87ye1x10KNtXnAByXlzV6rJUnFwFiasrpXk1q1xJymgo54AvBf3X6we2frAAwZhIcD
MeuNOy2etofiGfCCzXjiPavCqxd7hGbpXAp9ftp/tcpLIllrv11iq2fHxU25JccqYWy/Sf0A
0ROwed/Wz797++diuX443eSeXAZ5etx+hWasJjeHV2MoC7nsBwKLlbNbn1rCot12sVpun1z9
rPQyvTRL3ge7otiDSyq8T9sd/+QS8hqr5l2/i2YuAT2aJn46Lh5haM6xW+nmflHQ495mzbDg
80dPZpOAwMzRhGZW3bB1PuVsfkoLjNA1QnsbpMxxezpTzrhFlzXbUzcOs5NM+3EA3tsuYZSW
e6f0E571VlUlxJrtALBeZm3M8iSsnnUbb8tbwo0xJlgN7fIBOtZHrKoAsoSWFE4ymrdeJDce
oqqtQAYrpqdRPhYxQTx05eTCpAkEgiym4A/tecs2yxk5mBjkEDZGn7qossUWgcsI4f8AV8+K
S2Ykv7qLI8wbOW7ETS6cppMLE+hhznqwr04AtRbZ6Ir5Fuq4MYyofY4p6YM1slnttutW9QOJ
/VQ4QoOa3Qjj+CCe+Dxy3HeQmbU97t6QlHHKFK/cl+vNV2sCXdm/US6hGlkHbBFpRLd4c28T
GTgSgpIL+3xkyCPXSdJPr+DvMXP8+oDqdaId87bvTasCLjDvpUq0jOaEhNzHp1yBtBSCN/bs
Kg9at2pVUz7Du3yXEbzGwhkH7YOLljIOo8A33nb6X27SzE0aBvLKRRuoM5+LeXima3Dl7slm
GB4BvazXFIktkNCPHZBe/g6JE9yKfcw2zbt0Q9uwRiedJ876auCA4MX1RMCPheKBwxGVNP3+
xS6anOn9KROOagy8AA2kc+NLsnOlM3zmbadVRWQdcqnmi+W3TnpKWkpYaxRccpfs/ttURO+x
WgsPj+XscCk+3t5euEaV+UGPVH/HLrsMhYV8HxD1Plau75ZvChxfnUBfpy4ry/rWRsP+2dJt
74vjaqsLnJvh1F6lrI8zC0nxnWb9+wca74PNgExCP23XSVR0fD3UeuSKv0eg9Xywfghr6dy8
IeJDEisEEmTYytmXf7inb5miGUHJMgcBg1LM8VA+djy+z2JOhW/Xt5ZVri71l8fd+vBiS4WM
mbOEgWZ40nM/YlLDMP0i6yzvWaJDf7BOG9YW7QI+aD1TiVz+LqZmXMSoUA1ldP/mv/77Tett
6bfFblVs0OU2Ezdr6Neb9WG9eFz/b525Ptkqrqo3et3fB6RJ+NAIX1efxuSwljVzgL/dxsXb
LirvDqnzDNUyo+aKuLPJhp6iSRc9Mxauv+wW8M3d9nhYb9oGDSG5vSJmwBVWdYNXbx+F1LeG
A6mu0SHGrw05wXLKcy7KxwbGUOFAU64cACWll7cuSq4uL3weOMlcZbktGwY0/aLfZL6+Aj0L
A0eJc8UAEQ4bzO8sXUuK/Te2VCwknRJlzz+WHLDOLuqtU/L/VXJtvWnDUPiv9HGTumqrKq0v
PAQIISWJg5OMrS+IUYQq1BYVOm3/fufiXOz4pNtDpco+OI7jc7W/T+zwn6ZBzEwPE67M6smt
EL/j4frwGt3D2Mj3lsBbdlfo+z1ogm+jQKtKc7z2XbPt1DYayYyUhWfhJoyEXDBLgdVbBycE
LQJCBXvguUlAd1rmIXgRq/RMv8QsLHQuFLYqrpdrl9ClXdzZtPOwigvgmK1P8i4XG0zJ0QI0
tVnkXd5G33va6+pXrHTI49o2cXtgqCy1Hl8fn88HuiXw8LQ77ftgIkNjhRVA2/VSM1K4eM31
xBwuJSoiKoba/o2+ihLLKg7LUUPOAW6nQOaM3gg3nSgb6Y/MVKYCK1TxIx0r0Mh1qDWR+HWg
LAjigD8wZ2NVWIB4cWHq8jDyO34iPjUI77aHE4luDe+jz9Py05AC0ZcNEfHHOsXrKkSn1QFv
aZg0sS6Orj/f3Nq7JCd0uki0g+g+GhikvAKG9gymRVxrnpk1hFCE+XMyBn4ncMmEvoWQJg2c
A6U2CLBEmEVSZYmLxidUOr9ynyzEau/Pg1gN1qswWCAIDAE3Uk393z6ehaEy+jPd/Xzb79ED
d+7pW4F0EMUUqwooCDNVIa4bF4EvkKV2CDriKEtrG+UAhAbnZ+94BtW7eoABaXPSw9FIM5gd
GkSGYaKQ0kSHhcZfdCJWnFUmpIPUDV+6UJl0AsRP0Qqy2qBHBOpIqfEd7MAhLBfHexWaHH+c
SvhclgqzKWvpwHjfUs93bHIKIxPrsgqS/k42HQPDM7hSh5F4n9Z8VaoNUyg69KlYXdCb+lIh
wzyxCHAX9ghguJlWhq7G2hFtu4d6Kz53kEIGDgnyF+rleLq8SF62h7cja+d887x3QlRIgjC8
Vv4qiNWPNakqbMlyuROdmqrKUZcLRs0I61rlMEum2BDWDTshgcwiorP1Cq2W3ptjnaLa0Lty
7tYQPXqVscafS/EJ9XugsD0aSfkz4SItwjB31JBTCDzga03Oh9Px8ZluD15ePL2dd7938M/u
vL26uvrYd4UtH8aQWnpON90t/u4gelVIGTYLBKVK0Won8J4DYqZmRjFhHZz5h6XqHOydEuFu
om1arXjy70R6/7HIVl5tCL38j0b/i+yqVVaE4RQ20cANXuM22IgKGmsoVB42580FOp5tj9bJ
rGE8aKjzd/oFmpPaKJbxLJb49cgPZGtyF5Cv6spT57QUU3gl96kTDeuXIci9XypENlqv4iKJ
LRECiZsDJaQd1BExWHdEihhrdv3FGUTcBMTQuyx89qPDpiubBrBvHHNpT7RlB9mkEBA1EH7c
rzKQKWaTH6WNom0yO+LUzCYt0age/fH3RjrI54IMI25SOukA74llC0fE8FLy7ynU7ASg2EiZ
Wf+a0kxe5iJI88RzQYkZ5bvbo5uplbsTMjOTQ5i8/Nq9bvYWpdyiknx6rQaY8SgNvv+Oo2+h
7o5VKa+M7f3BySOZEq9gbnF21/AY3Ka4PHhlyfswiEZEMzf42r06GGexfwHb2/+by18AAA==

--y0ulUmNC+osPPQO6--

